#include <stdio.h>

int main() {
    // LEVEL 1:
    // char str[] = "The big brother is watching him! You'll be sent to 101..";
    
    // LEVEL 2:
    char str[] = "Hope,a good thing. No good things ever dies";

    // scanf("%s", str);

    int i = 0;
    while (str[i] != '\0') {
        printf((i % 8 != 7) ? "%x " : "%x\n", str[i]);
        i++;
    }
    printf("\n");
}