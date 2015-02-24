int int_shifts_are_logical() {
	int i = -1;
	int shift_val = (sizeof(int) << 3) - 1;
	int xright = i >> shift_val;
	return xright == 1;
}


/**
int main(void)
{
	printf("%d", int_shifts_are_logical());
	printf("\n");
}
*/