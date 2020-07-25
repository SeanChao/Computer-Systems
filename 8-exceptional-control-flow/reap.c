#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

volatile sig_atomic_t counter = 0;
void handler(int sig) {
    int olderrno = errno;
    sigset_t hmask, hprev;
    sigfillset(&hmask);
    while (counter) {
        waitpid(-1, NULL, 0);
        sigprocmask(SIG_BLOCK, &hmask, &hprev);
        printf("%ld ", ((long)(--counter)));
        sigprocmask(SIG_SETMASK, &hprev, NULL);
        puts("Children running\n");
    }
    errno = olderrno;
}

int main() {
    signal(SIGCHLD, handler);
    sigset_t mask, prev;
    sigfillset(&mask);
    for (int i = 0; i < 5; i++) {
        if (fork() == 0) {
            printf("Child \n");
            exit(0);
        }
        sigprocmask(SIG_BLOCK, &mask, &prev);
        counter++;
        sigprocmask(SIG_SETMASK, &prev, NULL);
    }
    while (counter) pause();
    exit(0);
}