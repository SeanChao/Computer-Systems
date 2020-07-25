#include <stdio.h>

static int b = 1;
int main() {
    b = 3;
    static int b = 2;
    printf("%d", b);
    return 0;
}