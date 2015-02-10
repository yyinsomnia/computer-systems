is_all_one(int x) {
	return ~(x ^ 0x0) == 0;
}

is_all_zero(int x) {
	return (x ^ 0x0) == 0;
}

is_msb_one(int x) {
	int shift_val = (sizeof(int) - 1) << 3;
	int xright = (x >> shift_val) & 0xFF;
	return ~(x ^ ~(0xFF)) == 0;
}

is_msb_zero(int x) {
	int shift_val = (sizeof(int) - 1) << 3;
	int xright = x >> shift_val & 0xFF;
	return ~(x ^ ~(0xFF)) == 0;
}