CC=~/opt/cross/bin/clang
LD=~/opt/cross/bin/ld.lld
TARGET=i386-elf

main: main.o
	$(LD) main.o -o main

main.o: main.c
	$(CC) -target $(TARGET) -o main.o main.c -c

clean:
	rm -f main.o main
