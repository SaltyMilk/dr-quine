all: Colleen Grace Sully

re: fclean all

Colleen: Colleen.s
	nasm -f elf64 Colleen.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Colleen Colleen.o

Grace: Grace.s
	nasm -f elf64 Grace.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc  -o Grace Grace.o

Sully: Sully.s
	nasm -f elf64 Sully.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Sully Sully.o

clean:
	rm -rf *.o Sully_0 Sully_1 Sully_2 Sully_3 Sully_4 Sully_5
fclean: clean
	rm -rf Colleen Grace Grace_kid.s Sully_* Sully
