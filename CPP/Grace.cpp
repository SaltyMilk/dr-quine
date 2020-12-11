#include<cstdio>
#include<fcntl.h>
 /*
 This program will print its own source when run.
 */
#define FILE "Grace_kid.cpp"
#define F(x)int x(){int fd = open(FILE, O_WRONLY | O_CREAT,0666);char str[]="#include<cstdio>%c#include<fcntl.h>%1$c /*%1$c This program will print its own source when run.%1$c */%1$c#define FILE %2$cGrace_kid.cpp%2$c%1$c#define F(x)int x(){int fd = open(FILE, O_WRONLY | O_CREAT,0666);char str[]=%c%s%2$c;dprintf(fd,str, 10, 34, str);}%1$c#define FUNC m##a##i##n%1$cF(FUNC)%1$c";dprintf(fd,str, 10, 34, str);}
#define FUNC m##a##i##n
F(FUNC)
