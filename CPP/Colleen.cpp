#include<cstdio>
 /*
 This program will print its own source when run.
 */
void fun(){return;}
int main()
{
 /*
 This is the source code
 */
fun();
char str[]="#include<cstdio>%c /*%1$c This program will print its own source when run.%1$c */%1$cvoid fun(){return;}%1$cint main()%1$c{%1$c /*%1$c This is the source code%1$c */%1$cfun();%1$cchar str[]=%c%s%2$c;%1$cprintf(str, 10, 34, str);%1$c}%1$c";
printf(str, 10, 34, str);
}
