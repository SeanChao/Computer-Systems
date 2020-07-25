#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void sigint_handler(int sig) {
    write(STDOUT_FILENO, "SIGINT", 6);
    return;
}

int main(int argc, char *argv[]) {
    sigset_t mask;
    sigset_t prev;
    sigemptyset(&mask);
    sigaddset(&mask, SIGINT);
    
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
        fprintf(stderr, "signal handler error: %s\n", strerror(errno));

    sigprocmask(SIG_BLOCK, &mask, &prev);
    pause();
    sigprocmask(SIG_SETMASK, &prev, NULL);

    return 0;
}