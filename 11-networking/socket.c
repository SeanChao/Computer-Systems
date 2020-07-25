#include "socket.h"

#include <errno.h>
#include <netdb.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>
#include <sys/types.h>
#include <unistd.h>

/* Unix-style error */
void unix_error(char *msg) {
    fprintf(stderr, "%s: %s\n", msg, strerror(errno));
    exit(0);
}

void Getaddrinfo(const char *node, const char *service,
                 const struct addrinfo *hints, struct addrinfo **res) {
    int rc;
    if ((rc = getaddrinfo(node, service, hints, res)) != 0)
        gai_error(rc, "Getaddrinfo error");
}

/**
 * Establishes a connection with a server.
 *
 * Returns descriptor if OK, -1 on error.
 */
int open_client_fd(char *hostname, char *port) {
    int client_fd;
    struct addrinfo hints, *listp, *p;
    // gets a list of potential server addresses
    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_socktype = SOCK_STREAM;
    hints.ai_flags = AI_NUMERICSERV;  // numeric port arg
    hints.ai_flags |= AI_ADDRCONFIG;  // Recommended
    Getaddrinfo(hostname, port, &hints, &listp);
    for (p = listp; p; p = p->ai_next) {
        printf("try: %d %d %d\n", p->ai_family, p->ai_socktype, p->ai_protocol);
        if ((client_fd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) <
            0)
            continue;
        if (connect(client_fd, p->ai_addr, p->ai_addrlen) != -1) break;
        close(client_fd);  // closes client fd is connection failed
    }
    freeaddrinfo(listp);
    if (!p)
        return -1;
    else
        return client_fd;
}

int open_listen_fd(char *port) {
    struct addrinfo hints, *listp, *p;
    int listen_fd, optval = 1;

    memset(&hints, 0, sizeof(struct addrinfo));
    hints.ai_socktype = SOCK_STREAM;
    /** AI_PASSIVE: used by servers as listening sockets
     *  AI_ADDRCONFIG: recommended for connections
     *  AI_NUMERICSERV: forces service to be a port number
     */
    hints.ai_flags = AI_PASSIVE | AI_ADDRCONFIG | AI_NUMERICSERV;
    /**
     * If the AI_PASSIVE flag is specified in hints.ai_flags, and node is NULL,
     * then the returned socket addresses will be suitable for bind(2)ing a
     * socket that will accept(2) connections.
     */
    Getaddrinfo(NULL, port, &hints, &listp);
    for (p = listp; p; p = p->ai_next) {
        // Creates a socket descriptor
        if ((listen_fd = socket(p->ai_family, p->ai_socktype, p->ai_protocol)) <
            0)
            continue;
        int rc;
        // Eliminates "Address already in use"
        if ((rc = setsockopt(listen_fd, SOL_SOCKET, SO_REUSEADDR,
                             (const void *)&optval, sizeof(int))) < 0)
            unix_error("Setsockopt error");
        if (bind(listen_fd, p->ai_addr, p->ai_addrlen) == 0) break;
        close(listen_fd);
    }

    freeaddrinfo(listp);
    if (!p) return -1;
    if (listen(listen_fd, 1024) < 0) {
        close(listen_fd);
        return -1;
    }
    return listen_fd;
}

int Accept(int s, struct sockaddr *addr, socklen_t *addrlen) {
    int rc;

    if ((rc = accept(s, addr, addrlen)) < 0) unix_error("Accept error");
    return rc;
}

/* Getaddrinfo-style error */
void gai_error(int code, char *msg) {
    fprintf(stderr, "%s: %s\n", msg, gai_strerror(code));
    exit(0);
}

void app_error(char *msg) /* Application error */
{
    fprintf(stderr, "%s\n", msg);
    exit(0);
}

// RIO

void Rio_readinitb(rio_t *rp, int fd) {
    rp->rio_fd = fd;
    rp->rio_cnt = 0;
    rp->rio_bufptr = rp->rio_buf;
}

ssize_t rio_writen(int fd, void *usrbuf, size_t n) {
    size_t nleft = n;
    ssize_t nwritten;
    char *bufp = usrbuf;

    while (nleft > 0) {
        if ((nwritten = write(fd, bufp, nleft)) <= 0) {
            if (errno == EINTR) /* Interrupted by sig handler return */
                nwritten = 0;   /* and call write() again */
            else
                return -1; /* errno set by write() */
        }
        nleft -= nwritten;
        bufp += nwritten;
    }
    return n;
}

static ssize_t rio_read(rio_t *rp, char *usrbuf, size_t n) {
    int cnt;

    while (rp->rio_cnt <= 0) { /* Refill if buf is empty */
        rp->rio_cnt = read(rp->rio_fd, rp->rio_buf, sizeof(rp->rio_buf));
        if (rp->rio_cnt < 0) {
            if (errno != EINTR) /* Interrupted by sig handler return */
                return -1;
        } else if (rp->rio_cnt == 0) /* EOF */
            return 0;
        else
            rp->rio_bufptr = rp->rio_buf; /* Reset buffer ptr */
    }

    /* Copy min(n, rp->rio_cnt) bytes from internal buf to user buf */
    cnt = n;
    if (rp->rio_cnt < n) cnt = rp->rio_cnt;
    memcpy(usrbuf, rp->rio_bufptr, cnt);
    rp->rio_bufptr += cnt;
    rp->rio_cnt -= cnt;
    return cnt;
}

void Rio_writen(int fd, void *usrbuf, size_t n) {
    if (rio_writen(fd, usrbuf, n) != n) unix_error("Rio_writen error");
}

ssize_t rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen) {
    int n, rc;
    char c, *bufp = usrbuf;

    for (n = 1; n < maxlen; n++) {
        if ((rc = rio_read(rp, &c, 1)) == 1) {
            *bufp++ = c;
            if (c == '\n') {
                n++;
                break;
            }
        } else if (rc == 0) {
            if (n == 1)
                return 0; /* EOF, no data read */
            else
                break; /* EOF, some data was read */
        } else
            return -1; /* Error */
    }
    *bufp = 0;
    return n - 1;
}

ssize_t Rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen) {
    ssize_t rc;

    if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0)
        unix_error("Rio_readlineb error");
    return rc;
}

char *Fgets(char *ptr, int n, FILE *stream) {
    char *rptr;

    if (((rptr = fgets(ptr, n, stream)) == NULL) && ferror(stream))
        app_error("Fgets error");

    return rptr;
}

void Fputs(const char *ptr, FILE *stream) {
    if (fputs(ptr, stream) == EOF) unix_error("Fputs error");
}
