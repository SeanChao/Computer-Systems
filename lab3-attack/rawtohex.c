#include <stdio.h>

int main() {
    // LEVEL 1:
    // char str[] = "The big brother is watching him! You'll be sent to 101..";
    
    // LEVEL 2:
    // char str[] = "Hope,a good thing. No good things ever dies";

    // LEVEL 3:
    // char str[] = "110dfc17";

    // LEVEL 4:
    char str[] = "I love ICS, but ICS don't love me...:-(";

    int i = 0;
    while (str[i] != '\0') {
        printf((i % 8 != 7) ? "%x " : "%x\n", str[i]);
        i++;
    }
    printf("\n");
}