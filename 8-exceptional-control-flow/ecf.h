#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/types.h>
#include <unistd.h>
#include <signal.h>

void unix_error(char *msg);

pid_t Fork(void);

void Kill(pid_t pid, int signum);
