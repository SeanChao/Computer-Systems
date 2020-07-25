extern short b;
char *names[] = {"MAN", "LI", "KUN", "LIU"};
int a;
int get_name(void) {
    a = 4;
    printf("get_name: a=%d b=%d\n", a, b);
    return a - b;
}