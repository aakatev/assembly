all: clean build link
				./bin

build:
				nasm -f elf32 code.asm -o object.o

link:
				ld -m elf_i386 object.o -o bin


clean:
				rm -rf bin
