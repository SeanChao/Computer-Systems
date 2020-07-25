#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

static int beeps = 0;
char beep[] = "BEEP!\n";
char boom[] = "BOOM!\n";

void handler(int sig) {
    write(STDOUT_FILENO, beep, strlen(beep));
    if (beeps < 5) {
        beeps += 1;
        fork();
        alarm(1);
    } else {
        write(STDOUT_FILENO, boom, strlen(beep));
        exit(0);
    }
}

int main() {
    signal(SIGALRM, handler);
    alarm(1);
    while (1)
        ;
    exit(0);
}