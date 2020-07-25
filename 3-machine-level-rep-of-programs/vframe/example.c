struct summer {
    char shine[10];
} e;

#define TYPE struct summer

TYPE vframe_new(long n, long idx, TYPE *q) {
    printf("sizeof struct: %d\n", sizeof(struct summer));
    long i;
    TYPE p[n];
    // ...
    p[0] = e;
    for (i = 1; i < n; i++) {
        p[i] = q[i];
    }
    return p[idx];
}
