#include <stdio.h>
#include <limits.h>

int main() {
    printf("%u\n", UINT_MAX);
    printf("INT_MIN=%d\n", INT_MIN);
    printf("INT_MAX=%d\n",INT_MAX);
    unsigned char a = 200;
    signed char b = a;

    signed char c = -56;
    unsigned char d = c;
    printf("%d %d %d %d\n", a, b, c, d);

    int e = -1u;
    printf("%d %u", e, e);
} 