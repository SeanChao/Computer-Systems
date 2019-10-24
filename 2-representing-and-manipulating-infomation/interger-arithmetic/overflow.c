#include <stdio.h>

int uadd_ok(unsigned x, unsigned y) {
    printf("x+y\t%u\n", x+y);
    printf("x\t%u\ty\t%u\n", x, y);
    return !(x + y < x);
}

int tadd_ok(int x, int y) {
    return !((x<0 == y<0) && (x<0 != x+y)<0);
}

int main(int argc, char const *argv[])
{
    printf("%d\n", uadd_ok(1,2147483647));
    printf("%d\n", uadd_ok(100,4294967295));
    return 0;
}
