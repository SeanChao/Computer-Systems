#include <stdio.h>
#include <sys/mman.h>
#include <unistd.h>

int main() {
    int fd = STDOUT_FILENO;  // stdout
    char *mapped_out = mmap(NULL, 1, PROT_WRITE, MAP_PRIVATE, fd, 0);
    printf("%p\n", mapped_out);
    mapped_out[0] = 'A';
    return 0;
}