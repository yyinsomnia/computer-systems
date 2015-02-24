/*
 * gcc -m32 ex_4_6_main.c ex_4_6.s
 */
#include <stdio.h>

int pushtest();

int main()
{
	printf("%x\n", pushtest());
}
