#include <sys/socket.h>
#include <unistd.h>

#include "socket.h"
#define MAXLINE 1024

void echo(int connfd) {
    size_t n;
    char buf[MAXLINE];
    rio_t rio;

    Rio_readinitb(&rio, connfd);
    while ((n = Rio_readlineb(&rio, buf, MAXLINE)) !=
           0) {  // line:netp:echo:eof
        printf("server received %d bytes\n", (int)n);
//        sleep(2);
        buf[0] = '!';
        Rio_writen(connfd, buf, n);
    }
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <port>\n", argv[0]);
        return 1;
    }
    char *port = argv[1];
    int server_fd = open_listen_fd(port);
    struct sockaddr_storage clientaddr;
    char client_hostname[MAXLINE];
    char client_port[MAXLINE];
    while (1) {
        socklen_t client_len = sizeof(struct sockaddr_storage);
        int conn_fd = Accept(server_fd, (SA *)&clientaddr, &client_len);
        getnameinfo((SA *)&clientaddr, client_len, client_hostname, MAXLINE,
                    client_port, MAXLINE, 0);
        printf("Connected to %s:%s\n", client_hostname, client_port);
        echo(conn_fd);
        close(conn_fd);
    }
    return 0;
}
