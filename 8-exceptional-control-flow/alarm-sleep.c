#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

#define MAX 2
#define SEC 4
int cnt = MAX;
void handler(int n) {
    if (cnt > 0) {
        cnt--;
        alarm(2);
        fork();
        printf("[%d] %d\n", getpid(), cnt);
    }
}

int main(void) {
    signal(SIGALRM, handler);
    alarm(2);
    for (int i = 0; i < SEC; i++) {
        unsigned rc = sleep(1);
        printf("[%d] S%d %u\n", getpid(), i + 1, rc);
    }
    return 0;
}
