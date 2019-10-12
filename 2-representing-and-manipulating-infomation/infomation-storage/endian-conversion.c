#include <stdio.h>
#define DATA_LE32(data)                                         \
    ((((data)&0x000000ff) << 24) | (((data)&0x0000ff00) << 8) | \
     (((data) >> 8) & 0x00ff0000) | (((data) >> 24) & 0xff000000))
/**
 * Notes on DATA_LE32:
 * refer to: DATA_LE32 macro in:
 * https://github.com/torvalds/linux/blob/master/arch/arm64/kernel/image.h
 * Use instead of + (pure bit operation) Use 0x000000FF rather than 0xFF Use
 * parentheses over the parameter and the whole expression
 */
int main() {
    int data;
    data = 0x12345670;
    printf("number ->\t%x\n", data);
    printf("convert->\t%x\n", DATA_LE32(data));
}