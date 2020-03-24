#include <stdio.h>
#include <limits.h>
#include "y64sim.h"
// #define FALSE false
// #define TRUE true

// typedef unsigned char bool_t;
// typedef __int64_t long_t;
// typedef
bool_t base(alu_t op, long_t argA, long_t argB, long_t val) {
    bool_t ovf = FALSE;
    argA = (argA >> 63) & 0x1;
    argB = (argB >> 63) & 0x1;
    val = (val >> 63) & 0x1;

    if (((op == A_ADD) && (((int)argA < 0) == ((int)argB < 0)) &&
         (((int)val < 0) != ((int)argA < 0))) ||
        ((op == A_SUB) && (((int)argA < 0) != ((int)argB < 0)) &&
         (((int)val < 0) == ((int)argA < 0)))) {
        ovf = TRUE;
    }
    return ovf;
}

bool_t my(alu_t op, long_t argA, long_t argB, long_t val) {
    // bool_t zero = (val == 0);
    // bool_t sign = ((int)val < 0);
    bool_t ovf = FALSE;
    if (op == A_ADD)
        ovf = ((argA < 0) == (argB < 0)) && ((val < 0) != (argA < 0));
    else if (op == A_SUB)
        ovf = (val < argB) != (argA > 0);
    // printf("args: %ld, %ld, %ld, %ld of: %d \n", op, argA, argB, val, ovf);
    return ovf;
}

long_t generateRandSingedInt64() {
    long_t val = 0;
    for (int i = 0; i < 64; i++) {
        val |= (rand() & 1) << i;
    }
    return val;
}

void ovf_cmp() {
    // for (long_t i = INT_MIN ; i < INT_MAX; i++)
    // {
    // }
    for (int i = 0; i < 10000000; i++) {
        long_t valA = generateRandSingedInt64();
        long_t valB = generateRandSingedInt64();
        long_t val = 0;
        // RAND_MAX
        alu_t op = rand() % 5;
        switch (op) {
            case A_ADD:
                val = valA + valB;
                break;
            case A_SUB:
                val = valB - valA;
                break;
            case A_AND:
                val = valB & valA;
                break;
            case A_XOR:
                val = valB ^ valA;
                break;
            case A_NONE:
                break;
        }
        bool_t a = base(op, valA, valB, val);
        bool_t b = my(op, valA, valB, val);
        if (a != b) {
            printf("conflict in test %ld %d %ld: giving %d <- %d\n", valA, op,
                   valB, b, a);
        } else if(a==1) {
            printf("test %ld %d %ld: giving %d <- %d\n", valA, op, valB, b, a);
        }
    }
}

int main() {
    srand(time(NULL));
    long_t a = 1;
    long_t b = LLONG_MIN;
    printf("%d", base(1, a, b, (b - a)));
    printf("%d\n", my(1, a, b, (b) - (a)));
    printf("%ld, %ld, %ld", b, a, b - a);
    // ovf_cmp();
    return 0;
}