#include <stdio.h>
#include <stdlib.h>
int main(int argc, char const *argv[]) {
    int *m = malloc((sizeof (int))*4);
    printf("%p\n", m);
    int data = *(int *)((char *)m - 4);
    printf("%d %x", data, data);
    return 0;
}
