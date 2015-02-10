#include <stdio.h>

unsigned replace_byte(unsigned x, unsigned char b, int i);

int main(void)
{
	int r = replace_byte(0x12345678, 0xAB, 2);
	printf("%X", r);
	printf("\n");
}