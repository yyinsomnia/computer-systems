#include <stdio.h>

int is_little_endian() {
	int val;
	val = 1;
	int *pval;
	pval = &val;
	return pval[0] == 1;
}

int main(void) {
	printf("%d", is_little_endian());
	printf("\n");
}
