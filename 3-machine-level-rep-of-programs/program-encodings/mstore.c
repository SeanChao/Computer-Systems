long mult2(long, long);

void multstore(long x, long y, long *dest) {
    long t = mult2(x, y);
    *dest = t;
}

/**
 * run:
 * gcc -Og -S mstore.c
 * to see the assembly code
 * use -c to both compile and assemble the code
 */
