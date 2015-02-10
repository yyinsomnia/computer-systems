#include <stdio.h>

unsigned replace_byte(unsigned x, unsigned char b, int i);

int is_all_one(int x);
int is_all_zero(int x);
int is_msb_one(int x);
int is_msb_zero(int x);

int int_shifts_are_logical();

int main(void)
{
	printf("%d", int_shifts_are_logical());
	printf("\n");
}