#include <stdio.h>

void print_int_binary(unsigned int x) {
    int n = sizeof(x) * 8;
    for (int i = n-1; i >= 0; i--) {
        printf("%u", (x >> i) & 0x1);
    }
    printf("\n");
}

void print_binary(void const *const ptr, size_t const size) {
    // little endian
    unsigned char *b = (unsigned char *)ptr;
    unsigned char byte;
    int i, j;

    for (i = size - 1; i >= 0; i--) {
        for (j = 7; j >= 0; j--) {
            byte = (b[i] >> j) & 1;
            printf("%u", byte);
        }
    }
    puts("");
}

int main() {
    int i = 123;
    print_int_binary(i);
    print_binary(&i, sizeof(i));
    return 0;
}
