char *shows[] = {"DWKM", "KLL", "JNTM", "LKH"};
char **gc_shows = &shows;
static short b = 2;
int get_show() {
    short a = 3;
    static short b = 1;
    printf("get_show: a=%d b=%d %p\n", a, b, &b);
    return a - b;
}