/*
 * proxy.c - ICS Web proxy
 *
 *
 */

#include <stdarg.h>
#include <sys/select.h>

#include "csapp.h"

#define BIGBUFFER 16392

struct http_request_t {
    char method[MAXLINE];
    char uri[BIGBUFFER];
    char version[MAXLINE];
    char header_buf[MAXLINE];
    char data[BIGBUFFER];
    size_t data_size;
};

struct thread_param_t {
    int inbound_fd;
    struct sockaddr_storage clientaddr;
};

/*
 * Function prototypes
 */
int parse_uri(char *uri, char *target_addr, char *path, char *port);
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri,
                      size_t size);
int read_request(int fd, struct http_request_t *request_buf);
// void read_requesthdrs(rio_t *rp);
size_t send_request(int client_fd, struct http_request_t *req, char *response);
void doit(int listenfd, struct sockaddr_storage clientaddr);
void *thread(void *vargp);
ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n);
ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen);
void Rio_writen_w(int fd, void *usrbuf, size_t n);

static sem_t log_mutex;  // log output mutex

/*
 * main - Main routine for the proxy program
 */
int main(int argc, char **argv) {
    /* Check arguments */
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <port number>\n", argv[0]);
        exit(0);
    }
    Sem_init(&log_mutex, 0, 1);
    pthread_t tid;
    char *portnum = argv[1];
    int inbound_listenfd = Open_listenfd(portnum);
    while (1) {
        struct sockaddr_storage clientaddr;
        socklen_t client_len = sizeof(clientaddr);
        int inbound_fd =
            Accept(inbound_listenfd, (SA *)&clientaddr, &client_len);
        char hostname[MAXLINE];
        char port[MAXLINE];
        Getnameinfo((SA *)&clientaddr, client_len, hostname, MAXLINE, port,
                    MAXLINE, 0);
        if (inbound_fd == -1) {
            continue;
        }
        struct thread_param_t *param = Malloc(sizeof(struct thread_param_t));
        param->inbound_fd = inbound_fd;
        param->clientaddr = clientaddr;
        Pthread_create(&tid, NULL, thread, param);
    }
    exit(0);
}

void *thread(void *vargp) {
    struct thread_param_t param = *(struct thread_param_t *)vargp;
    int listenfd = param.inbound_fd;
    struct sockaddr_storage clientaddr = param.clientaddr;
    doit(listenfd, clientaddr);
    Free(vargp);
    Pthread_detach(pthread_self());
    return NULL;
}

/**
 * Main proxy routine. Send request to remote server and proxy response to the
 * client.
 */
void doit(int inbound_fd, struct sockaddr_storage clientaddr) {
    struct http_request_t request;
    memset(&request, 0, sizeof(request));
    int read_code = read_request(inbound_fd, &request);
    if (read_code == -1) return;
    char response[MAXLINE] = {0};
    size_t response_size = send_request(inbound_fd, &request, response);
    Close(inbound_fd);
    char log_string[MAXLINE];
    format_log_entry(log_string, (struct sockaddr_in *)(SA *)&clientaddr,
                     request.uri, response_size);
    P(&log_mutex);
    printf("%s\n", log_string);
    V(&log_mutex);
}

/**
 * Reads inbound request, parses result in request_buf
 * Returns -1 on error
 */
int read_request(int fd, struct http_request_t *request_buf) {
    char buf[MAXLINE] = {0};
    char method[MAXLINE] = {0}, uri[MAXLINE] = {0}, version[MAXLINE] = {0};
    rio_t rio;
    // reads request line
    Rio_readinitb(&rio, fd);
    if (!Rio_readlineb_w(&rio, buf, MAXLINE)) return -1;
    sscanf(buf, "%s %s %s", method, uri, version);
    if (!strlen(method) || !strlen(uri) || !strlen(version)) {
        return -1;
    }
    strcpy(request_buf->method, method);
    strcpy(request_buf->uri, uri);
    strcpy(request_buf->version, version);
    // reads request headers
    char headers[MAXLINE] = {0};
    size_t data_size = 0;

    do {
        ssize_t size = Rio_readlineb_w(&rio, buf, MAXLINE);
        if (size < 0) {
            return -1;
        }
        if (size == 0) break;
        strcat(headers, buf);
        if (strncmp(buf, "Content-Length", 14) == 0) {
            sscanf(buf, "Content-Length: %lu\r\n", &data_size);
        }
    } while (strncmp(buf, "\r\n", 2) != 0);
    strcpy(request_buf->header_buf, headers);
    // reads request payload data, if any
    char databuf[BIGBUFFER];
    char *dest = databuf;
    ssize_t rc = Rio_readnb_w(&rio, dest, data_size);
    if (rc < 0) {
        return -1;
    }
    if (rc < data_size) {
        return -1;
    }
    memcpy(request_buf->data, databuf, data_size);
    request_buf->data_size = data_size;
    return 0;
}

size_t send_request(int client_fd, struct http_request_t *req, char *response) {
    // parses proxied request params
    char hostname[MAXLINE];
    char path[MAXLINE];
    char port[MAXLINE];
    parse_uri(req->uri, hostname, path, port);
    // Opens socket
    int outbound_fd = Open_clientfd(hostname, port);
    // Prepares outbound request
    char buf[MAXLINE * 4] = {0};
    sprintf(buf, "%s /%s %s\r\n", req->method, path, req->version);

    strcat(buf, req->header_buf);
    size_t h_size = strlen(buf);
    memcpy(buf + h_size, req->data, req->data_size);
    Rio_writen_w(outbound_fd, buf, h_size + req->data_size);
    // Handles outbound response
    rio_t rio;
    Rio_readinitb(&rio, outbound_fd);
    // Reads response headers
    int rc;
    int content_length = 0;
    size_t response_size = 0;
    while ((rc = Rio_readlineb_w(&rio, buf, MAXLINE))) {
        strcat(response, buf);
        if (strncmp(buf, "Content-Length", 14) == 0) {
            sscanf(buf, "Content-Length: %d\r\n", &content_length);
        }
        response_size += strlen(buf);
        if (strcmp(buf, "\r\n") == 0) break;
    }
    Rio_writen_w(client_fd, response, strlen(response));
    // Reads response body
    for (int i = 0; i < content_length; i++) {
        int rc = Rio_readnb_w(&rio, buf, 1);
        if (rc == 0) {
            return 0;
        }
        Rio_writen_w(client_fd, buf, 1);
    }
    response_size += content_length;
    return response_size;
}

/*
 * parse_uri - URI parser
 *
 * Given a URI from an HTTP proxy GET request (i.e., a URL), extract
 * the host name, path name, and port.  The memory for hostname and
 * pathname must already be allocated and should be at least MAXLINE
 * bytes. Return -1 if there are any problems.
 */
int parse_uri(char *uri, char *hostname, char *pathname, char *port) {
    char *hostbegin;
    char *hostend;
    char *pathbegin;
    int len;

    if (strncasecmp(uri, "http://", 7) != 0) {
        hostname[0] = '\0';
        return -1;
    }

    /* Extract the host name */
    hostbegin = uri + 7;
    hostend = strpbrk(hostbegin, " :/\r\n\0");
    if (hostend == NULL) return -1;
    len = hostend - hostbegin;
    strncpy(hostname, hostbegin, len);
    hostname[len] = '\0';

    /* Extract the port number */
    if (*hostend == ':') {
        char *p = hostend + 1;
        while (isdigit(*p)) *port++ = *p++;
        *port = '\0';
    } else {
        strcpy(port, "80");
    }

    /* Extract the path */
    pathbegin = strchr(hostbegin, '/');
    if (pathbegin == NULL) {
        pathname[0] = '\0';
    } else {
        pathbegin++;
        strcpy(pathname, pathbegin);
    }

    return 0;
}

/*
 * format_log_entry - Create a formatted log entry in logstring.
 *
 * The inputs are the socket address of the requesting client
 * (sockaddr), the URI from the request (uri), the number of bytes
 * from the server (size).
 */
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri,
                      size_t size) {
    time_t now;
    char time_str[MAXLINE];
    char host[INET_ADDRSTRLEN];

    /* Get a formatted time string */
    now = time(NULL);
    strftime(time_str, MAXLINE, "%a %d %b %Y %H:%M:%S %Z", localtime(&now));

    if (inet_ntop(AF_INET, &sockaddr->sin_addr, host, sizeof(host)) == NULL)
        unix_error("Convert sockaddr_in to string representation failed\n");

    /* Return the formatted log entry string */
    sprintf(logstring, "%s: %s %s %zu", time_str, host, uri, size);
}

void Rio_writen_w(int fd, void *usrbuf, size_t n) {
    if (rio_writen(fd, usrbuf, n) != n) return;
}

ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n) {
    ssize_t rc;
    if ((rc = rio_readnb(rp, usrbuf, n)) < 0) return 0;
    return rc;
}

ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen) {
    ssize_t rc;
    if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0) return 0;
    return rc;
}
