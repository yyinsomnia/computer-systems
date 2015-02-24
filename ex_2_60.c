unsigned replace_byte(unsigned x, unsigned char b, int i) {
	int shift_val = i << 3;
	int mask = 0xFF << shift_val;
	return (x & ~mask) |  (b << shift_val);
}

/**
int main(void)
{
	int r = replace_byte(0x12345678, 0xAB, 2);
	printf("%X", r);
	printf("\n");
}
*/