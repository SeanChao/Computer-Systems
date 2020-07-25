#include <stdio.h>
// #include "arr.c"

int main() {
    int *s = {0, 1, 2, 3, 4, 5, 6, 7, 8};
    int i = 1;
    // scanf("%d", i);
    long a = ((int *)s)[i];
    printf("%ld\t%lx\n", a);

    int j = 1;
    // scanf("%d", j);
    long b = *((short *)&s[j]);
    printf("%ld\t%lx\n", b);
}