#include "ecf.h"

void unix_error(char *msg) {
    fprintf(stderr, "%s: %s\n", msg, strerror(errno));
    exit(0);
}

pid_t Fork(void) {
    pid_t pid;
    if ((pid = fork()) < 0) unix_error("fork error");
    return pid;
}

void Kill(pid_t pid, int signum) {
    if (kill(pid, signum) < 0) unix_error("Kill error");
}
// Processes
