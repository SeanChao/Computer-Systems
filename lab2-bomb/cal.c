#include <stdio.h>

int main() {
    int a[] = {-4137, -4130, -4069, -4035, -4004, -3977, -3950, -3923};
    for (int i = 0; i < 8; i++) {
        printf("%x\n", a[i] + 0x1457 + 0x1039);
    }

    // phase 5
    // char *s1 = "isrvea";
    int s1[6] = {1, 5, 0, 0xb, 0xd, 1};
    char *s2 = "saints";
    for (int i = 0; i < 6; i++) {
        printf("%c", ((s1[i]) & 0xf) + 0x20);
    }
    printf("\n");
    return 0;
}