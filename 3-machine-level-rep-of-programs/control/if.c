long f1(long a, long b) {
    if(a <= b) {
        return a = b;
    }
    return a;
}

long f2(long a, long b) {
    long max;
    if (a > b) {
        max = a;
    }else {
        max = b;
    }
    return max;
}