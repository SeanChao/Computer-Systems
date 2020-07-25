#include <pthread.h>
#include <stdio.h>

void *visit_mem() {
    int x = 1;
    printf("%ld: %p\n", pthread_self(), &x);
    return NULL;
}

int main(int argc, char const *argv[]) {
    pthread_t tid;
    for (int i = 0; i < 3; i++) {
        pthread_create(&tid, NULL, visit_mem, NULL);
    }
    printf("EXIT\n");
    return 0;
}
