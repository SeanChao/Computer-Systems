FALG = -Wall -Og
TMP = ../.build
CC = gcc

all:
	$(CC) -c ecf.c 
	$(CC) -c main.c
	$(CC) -o main ecf.o main.o

clean:
	rm ecf.o main.o main

run: all
	./main
