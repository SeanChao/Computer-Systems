#include <setjmp.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

sigjmp_buf buf;

void sigchild_handler(int sig) {
    puts("handler\n");
    siglongjmp(buf, 1);
}

// read with timeout
char *tfgets(char *s, int size, FILE *stream) {
    if (fork() == 0) {
        sleep(5);
        printf("Child exits.\n");
        exit(0);
    }
    switch (sigsetjmp(buf, 1)) {
        case 0:
            signal(SIGCHLD, sigchild_handler);
            return fgets(s, size, stream);
            break;
        case 1:
            return NULL;
            break;
        default:
            break;
    }
    return s;
}

int main() {
    char buf[1024];
    if (tfgets(buf, 1024, stdin) == NULL)
        printf("BOOM!\n");
    else
        printf("%s", buf);
    return 0;
}