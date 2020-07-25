CC = gcc
CFLAGS = -Wall -Og

all: main echo

socket.o: socket.c socket.h

main: socket.o main.c

echo_client: socket.o echo_client.c

echo_server: socket.o echo_server.c

echo: echo_client echo_server
