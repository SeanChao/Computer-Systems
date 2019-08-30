#include <stdio.h>

#include "../infomation-storage/addressing-and-byte-ordering.h"

int main() {
    unsigned int ux = 2147483647;
    unsigned int uy = 2147483648;
    printf("%u\n", ux+uy);

    unsigned int ua = 2147483649;
    unsigned int ub = 2147483648;
    printf("%u\n", ua+ub);
}