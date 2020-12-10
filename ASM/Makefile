all: Colleen Grace

re: fclean all

Colleen: Colleen.s
	nasm -f elf64 Colleen.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Colleen Colleen.o

Grace: Grace.s
	nasm -f elf64 Grace.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc  -o Grace Grace.o

clean:
	rm -rf *.o
fclean: clean
	rm -rf Colleen Grace Grace_kid.s
