#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {
    srand(time(NULL));
    __int32_t A = 0xABADBEEF;
    __int32_t B = 0xDECEA5ED;
    __int32_t R = (A & 0x00FFFFFF) | (B & 0xFF000000);
    printf("%x\n", R);

    // using & | - to implement ^
    unsigned int a = rand() % __INT_MAX__;
    unsigned int b = rand() % __INT_MAX__;
    printf("\na = %x, b = %x\n", a, b);
    printf("%x\t%x\n", a ^ b, (a | b) - (a & b));
}