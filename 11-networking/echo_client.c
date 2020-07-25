#include <unistd.h>
#include <stdio.h>
#include <string.h>

#include "socket.h"

#define MAXLINE 1024

int main(int argc, char *argv[]) {
    if (argc != 3) {
        fprintf(stderr, "usage: %s <host> <port>\n", argv[0]);
        return 1;
    }
    char *host = argv[1];
    char *port = argv[2];
    int client_fd = open_client_fd(host, port);
    rio_t rio;
    Rio_readinitb(&rio, client_fd);
    char buf[MAXLINE];
    while (Fgets(buf, MAXLINE, stdin) != NULL) {
        Fputs("<-", stdout);
        Rio_writen(client_fd, buf, strlen(buf));
        Rio_readlineb(&rio, buf, MAXLINE);
        Fputs(buf, stdout);
    }
    close(client_fd);
    return 0;
}