#include <stdio.h>
#include <stdlib.h>
#include "addressing-and-byte-ordering.h"

typedef unsigned char byte;

int is_little_endian() {
    int data = 0xff;
    // 1 == *(unsigned char*)&(const int) { 1 }
    return (unsigned char)data == 0xff;
}

/**
 * transform an 32 bit unsigned integer number into little endian format and
 * return the pointer to the little endian integer
 */
byte* to_little_endian(unsigned long int num) {
    unsigned int* ans = malloc(sizeof(unsigned int));
    if (is_little_endian()) {
        *ans = num;
        return (byte*)ans;
    }
    *ans = (num & 0xff) << 24 | (num & 0xff00) << 8 | (num >> 8) & 0xff00 |
           (num >> 24) & 0xff;
    return (byte*)ans;
}

int main(int argc, char const* argv[]) {
    printf("is_little_endian: %d\n", is_little_endian());
    unsigned int ux = 0x12345678;
    show_int(ux);
    for (size_t i = 0; i < sizeof(ux); i++) {
        printf(" %.2x", *(to_little_endian(ux) + i));
    }
    return 0;
}
