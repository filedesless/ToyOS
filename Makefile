CC=~/opt/cross/bin/clang
LD=~/opt/cross/bin/ld.lld
TARGET=i386-elf

all: build/ build/kernel.o

# build/ToyOS.bin: build/kernel.o build/boot.o
# 	$(LD) build/kernel.o -o build/ToyOS.bin -T linker.ld

build/kernel.o: kernel.c
	$(CC) -target $(TARGET) kernel.c -c -ffreestanding

# build/boot.o: boot.s

build/:
	mkdir -p build

clean:
	rm -f kernel.o kernel
