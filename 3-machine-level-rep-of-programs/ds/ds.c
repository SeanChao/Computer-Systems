#include <stdio.h>

union ele {
    struct s1 {
        char cc;
        union ele *next;
        short ss;
        long long int li;
    } e1;
    int i;
    struct s2 {
        char c;
        struct s1 (*f)(int i, short s, long l);
        char str[3];
        short s;
        int *p[2];
        char c2;
        int ii;
    } e2;
} u;

// size is 24: 8 (4) 10 (4) => 24 => 3 * 8
struct sunshine {
    int brightness;
    union light {
        void *wave;
        char particles[10];
    } white;
} orange;

int main() {
    char str[3];
    printf("%ld\n", sizeof(str));
    printf("long long int\t%ld\n", sizeof(long long int));
    printf("%ld\n", sizeof(u.e1));
    printf("%ld\n", sizeof(u.e2));
    printf("%ld\n", sizeof(u));
    printf("%p\n", &u);
    printf("%p\n", &u.e1.next);
    printf("%p\n", &u.e1.li);
    printf("%p\n", &u.e2.f);
    printf("%p\n", &u.e2.p[1]);
    printf("size of sunshine: %ld\n", sizeof(orange));
}
