// The function should be changed to x==1

typedef long long unsigned u64;

u64 foo(u64 x) { return (x == 0) ? x : x * foo(x - 1); }