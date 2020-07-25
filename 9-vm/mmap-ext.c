#include <fcntl.h>
#include <stdio.h>
#include <sys/mman.h>
#include <unistd.h>

int main() {
    int fd = open("test.txt", O_RDWR);
    char *sbuf = mmap(NULL, 100, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);
    printf("%p %c\n", sbuf, sbuf[0]);
    sleep(3);
    // external file changes would be reflected
    printf("%p %c\n", sbuf, sbuf[0]);
    return 0;
}