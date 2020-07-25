#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

unsigned int snooze(unsigned int secs) {
    unsigned slept = sleep(secs);
    printf("Slept for %u of %u secs.\n", secs - slept, secs);
    return slept;
}

void sigint_handler(int sig) {
    // do noting. sleep() is returned whenever the process receives a signal
    // that is not ignored.
    return;
}

int main(int argc, char *argv[]) {
    if (argc < 2) return 1;
    unsigned secs = (unsigned)atoi(argv[1]);
    if (signal(SIGINT, sigint_handler) == SIG_ERR)
        fprintf(stderr, "signal handler error: %s\n", strerror(errno));
    snooze(secs);
    return 0;
}