#include <netdb.h>
#include <stdio.h>

typedef struct sockaddr SA;

void Getaddrinfo(const char *node, const char *service,
                 const struct addrinfo *hints, struct addrinfo **res);
int open_client_fd(char *hostname, char *port);
int open_listen_fd(char *port);
int Accept(int s, struct sockaddr *addr, socklen_t *addrlen);
void gai_error(int code, char *msg);
void unix_error(char *msg);

// RIO lib

#define RIO_BUFSIZE 8192
typedef struct {
    int rio_fd;                /* Descriptor for this internal buf */
    int rio_cnt;               /* Unread bytes in internal buf */
    char *rio_bufptr;          /* Next unread byte in internal buf */
    char rio_buf[RIO_BUFSIZE]; /* Internal buffer */
} rio_t;

void Rio_readinitb(rio_t *rp, int fd);
void Rio_writen(int fd, void *usrbuf, size_t n);
ssize_t Rio_readlineb(rio_t *rp, void *usrbuf, size_t maxlen);

char *Fgets(char *ptr, int n, FILE *stream);
void Fputs(const char *ptr, FILE *stream);
