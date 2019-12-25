#include <stdio.h>

int main(int argc, char const *argv[])
{
    char s[100];
    unsigned val = 0x110dfc17;
    sprintf(s, "%.8x", val);
    printf("%s\n", s);

    unsigned str = 0x31323334;
    printf("%c\n", ((char *)&str)[2]);
    return 0;
}
