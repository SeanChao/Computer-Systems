#include "socket.h"
#include <stdio.h>

int main() {
    int client_fd = open_client_fd("http://seanchao.xyz", "80");
    printf("get client fd: %d\n", client_fd);
    return 0;
}
