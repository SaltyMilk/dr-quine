#include <stdio.h>
#include <fcntl.h>
int main()
{
printf("flag=%d\nperm=%d", O_WRONLY|O_TRUNC, 0666);
}
