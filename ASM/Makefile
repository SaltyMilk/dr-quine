all: Colleen Grace Sully

re: fclean all

Colleen: Colleen.s
	nasm -f elf64 Colleen.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o Colleen Colleen.o

Grace: Grace.s
	nasm -f elf64 Grace.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc  -o Grace Grace.o

Sully: Sully.s
	@mkdir SullyChilds
	nasm -f elf64 Sully.s
	ld --dynamic-linker /lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 -lc -e main -o SullyChilds/Sully Sully.o

clean:
	rm -rf *.o SullyChilds/*.o SullyChilds/Sully_0 SullyChilds/Sully_1 SullyChilds/Sully_2 SullyChilds/Sully_3 SullyChilds/Sully_4 SullyChilds/Sully_5
fclean: clean
	rm -rf Colleen Grace Grace_kid.s SullyChilds
