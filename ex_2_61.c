int is_all_one(int x) {
	return ~(x ^ 0x0) == 0;
}

int is_all_zero(int x) {
	return (x ^ 0x0) == 0;
}

int is_msb_one(int x) {
	int shift_val = (sizeof(int) - 1) << 3;
	int xright = (x >> shift_val) & 0xFF;
	return ~(xright ^ ~(0xFF)) == 0;
}

int is_msb_zero(int x) {
	int shift_val = (sizeof(int) - 1) << 3;
	int xright = x >> shift_val & 0xFF;
	return xright == 0;
}

/**
int main(void)
{
	int all_one = 0xFFFFFFFF;
	int not_all_one = 0xFFF0FFF0;
	int all_zero = 0x00000000;
	int not_all_zero = 0xFF00FF00;
	int msb_one = 0xFF01009F;
	int not_msb_one = 0xF101009F;
	int msb_zero = 0x0001009F;
	int not_msb_zero = 0x0101009F;
	printf("%d", is_all_one(all_one));
	printf("\n");
	printf("%d", is_all_one(not_all_one));
	printf("\n");
	printf("%d", is_all_zero(all_zero));
	printf("\n");
	printf("%d", is_all_zero(not_all_zero));
	printf("\n");
	printf("%d", is_msb_one(msb_one));
	printf("\n");
	printf("%d", is_msb_one(not_msb_one));
	printf("\n");
	printf("%d", is_msb_zero(msb_zero));
	printf("\n");
	printf("%d", is_msb_zero(not_msb_zero));
	printf("\n");

}
*/