#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <limits.h>
#include <errno.h>
int main() {
    // char *ptr = "0x8fffffffffffffff";
    // char *ptr = "0xfff1342809062Cac";
    // char *pEnd;
    // unsigned long long value = strtoull(ptr, &pEnd, 0);
    // printf("%llx\n", value);
    // printf("errno: %d\n", errno);

    struct a_t {
        int val[2];
    } a;

    struct b_t {
        struct a_t *p;
    }b;

    a.val[0] = 233;
    a.val[1] = 666;
    b.p = &a;
    printf("%d", b.p->val[0]);
}