#include <stdio.h>

int main() {
    // int a[2]; char *b = a;

    // int a[2];
    // char **b = a;

    // int *a[2];
    // char **b = a;

    // int a[2];
    // char(*b)[2][2] = a;

    int a[2];
    char(**b)[2][2];
    printf("%p\t%p\t%p\t%p\t%d\n", &a, &b, &(a[1]), b + 1, &(a[1]) == b + 1);

    int(*p_int_arr_3)[2];
    int(*p_int_arr_4)[4];
    int(*p_int_arr_3_3)[3][3];
    printf("%p\t%p\n", p_int_arr_3, p_int_arr_3 + 1);
    printf("%p\t%p\n", p_int_arr_4, p_int_arr_4 + 1);
    printf("%p\t%p\n", p_int_arr_3_3, p_int_arr_3_3 + 1);   // add 3*3*sizeof(int) bytes
}
