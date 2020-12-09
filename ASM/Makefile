all: Colleen

re: fclean all

Colleen: Colleen.s
	nasm -f elf64 Colleen.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Colleen Colleen.o

clean:
	rm -rf *.o
fclean: clean
	rm -rf Colleen
