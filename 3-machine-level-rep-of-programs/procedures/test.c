long A (long x) {
    long a0 = x;
    long a1 = x+1;
    long a2 = x+2;
    long a3 = x+3;
    long a4 = x+4;
    long a5 = x+5;
    long a6 = 6;
    long a7 = x+7;

    a5 += C(a0, a1, a2, a3, a4, a5, (char)a6, &a7);
    return a5;
}

long B(long n) {
    long result;

    if(n <= 1) {
        result = 1;
    }else {
        result = n * D(n - 1);
    }
    return result;
}