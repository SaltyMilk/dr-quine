#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <strings.h>
int main()
{
	int i = 5;
	char code[]="#include <stdio.h>%c#include <fcntl.h>%1$c#include <stdlib.h>%1$c#include <strings.h>%1$cint main()%1$c{%1$c%cint i = %d;%1$c%2$cchar code[]=%c%s%4$c;%1$c%2$cchar fname[64];%1$c%2$cbzero(fname, 64);%1$c%2$csprintf(fname, %4$cSully_%%d.c%4$c, i);%1$c%2$cif (open(fname, 0) != -1)%1$c%2$c%2$csprintf(fname, %4$cSully_%%d.c%4$c, --i);%1$c%2$cint fd = open(fname, O_WRONLY | O_CREAT, 0666);%1$c%2$cdprintf(fd, code, 10, 9, i, 34, code);%1$c%2$cchar compile_cmd[64];%1$c%2$cbzero(compile_cmd, 64);%1$c%2$csprintf(compile_cmd, %4$cgcc %%s -o Sully_%%d%4$c, fname, i);%1$c%2$csystem(compile_cmd);%1$c%2$cchar execute_cmd[64];%1$c%2$cbzero(execute_cmd, 64);%1$c%2$csprintf(execute_cmd, %4$c./Sully_%%d%4$c, i);%1$c%2$cif (i > 0)%1$c%2$c%2$csystem(execute_cmd);%1$c}%1$c";
	char fname[64];
	bzero(fname, 64);
	sprintf(fname, "Sully_%d.c", i);
	if (open(fname, 0) != -1)
		sprintf(fname, "Sully_%d.c", --i);
	int fd = open(fname, O_WRONLY | O_CREAT, 0666);
	dprintf(fd, code, 10, 9, i, 34, code);
	char compile_cmd[64];
	bzero(compile_cmd, 64);
	sprintf(compile_cmd, "gcc %s -o Sully_%d", fname, i);
	system(compile_cmd);
	char execute_cmd[64];
	bzero(execute_cmd, 64);
	sprintf(execute_cmd, "./Sully_%d", i);
	if (i > 0)
		system(execute_cmd);
}
