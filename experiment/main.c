#include <stdio.h>
#include "recursive-factorial.c"

int main(int argc, char const *argv[])
{
    printf("%llu", foo(5));
    return 0;
}
