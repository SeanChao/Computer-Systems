#include <stdio.h>

void inplaceSwap(int *x, int *y) {
    *x = *x ^ *y;
    *y = *x ^ *y;
    *x = *x ^ *y;
}

int main() {
    int x = 233;
    int y = 666;
    inplaceSwap(&x, &y);
    printf("x=%d\ty=%d\n", x, y);

    int aNumber = 0x06;
    printf("~0x%x=0x%x\n",aNumber, ~aNumber);
    printf("!0x%x=0x%x\n",aNumber, !aNumber);
}