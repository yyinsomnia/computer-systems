#include <stdio.h>

int is_little_endian() {
	int val;
	val = 0x00000101;
	unsigned char *pval;
	pval = (unsigned char *) &val;
	return pval[3] == 1;
}

int main(void) {
	printf("%d", is_little_endian());
	printf("\n");
}
