#include <signal.h>
#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#define MAX_GENERATION 2

int generation = 0;
void divide(int n) {
    if (generation < MAX_GENERATION) {
        generation += 1;
        kill(-getpid(), SIGINT);
        if (fork() == 0) {
            printf("%d\n", getpid());
        }
    }
}

int main(void) {
    printf("%d\n", getpid());
    signal(SIGINT, divide);
    kill(getpid(), SIGINT);
    while (1)
        ;
}