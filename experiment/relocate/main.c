#include <stdio.h>

extern char* shows[];
extern int get_name(void);
short a = 1;
short b = 3;
int names[4];
int get_show(void);

void main(void) {
    printf("main: a=%d b=%d %p \n", a, b, &b);
    printf("%s perform %s\n", (char*)names[get_name()],
           (char*)shows[get_show()]);
}
