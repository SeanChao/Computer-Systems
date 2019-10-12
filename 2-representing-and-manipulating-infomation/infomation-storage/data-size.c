#include <stdio.h>

typedef __int32_t mint;

int int_size_is_32() {
    int set_msb = 1 << 31;
    // the left shift amount cannot be larger than 32
    int beyond_msb = set_msb << 1;
    return set_msb && !beyond_msb;
}

int int_size_is_32_16() {
    mint set_msb = 1 << 15;
    set_msb <<= 15;
    set_msb <<= 1;
    mint beyond_msb = set_msb << 1;
    return set_msb && !beyond_msb;
}

int main() {
    printf("int_size_is_32: %d\n", int_size_is_32());
    printf("int_size_is_32_16: %d\n", int_size_is_32_16());
    return 0;
}
