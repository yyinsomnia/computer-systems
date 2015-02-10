unsigned replace_byte(unsigned x, unsigned char b, int i) {
	int shift_val = i << 3;
	int mask = 0xFF << shift_val;
	return (x & ~mask) |  (b << shift_val);
}