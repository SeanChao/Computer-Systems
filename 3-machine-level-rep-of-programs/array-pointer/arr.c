int foo(int s[], int i) {
    long a = ((long *)s)[i];
    long b = *((short *)&s[i]);
    return a + b;
}