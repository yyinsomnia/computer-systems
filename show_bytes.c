/*
 MacBook Pro and Dell Ubuntu
 21
 21 43
 21 43 65
 so:little endian
*/

#include <stdio.h>

typedef unsigned char *byte_pointer; //why use unsigned? know more about the func printf

void show_bytes(byte_pointer start, int len) {
	int i;
	for (i = 0; i < len; i++)
		printf(" %.2x", start[i]);
	printf("\n");
}

void show_int(int x) {
	show_bytes((byte_pointer) &x, sizeof(int));
}

void show_short(short int x) {
	show_bytes((byte_pointer) &x, sizeof(short int));
}

void show_long(long int x) {
	show_bytes((byte_pointer) &x, sizeof(long int));
}

void show_double(double x) {
	show_bytes((byte_pointer) &x, sizeof(double));
}

void show_float(float x) {
	show_bytes((byte_pointer) &x, sizeof(float));
}

void show_pointer(void *x) {
	show_bytes((byte_pointer) &x, sizeof(void *));
}

void test_show_bytes(int val) {
	int ival = val;
	short int sval = (short int) ival;
	long int lval = (long int) ival;
	float fval = (float) ival;
	double dval = (double) ival;
	int *pval = &ival;
	show_int(ival);
	show_short(sval);
	show_long(lval);
	show_float(fval);
	show_double(dval);
	show_pointer(pval);
}

int main(void) {
	int val = 0x87654321;
	byte_pointer valp = (byte_pointer) &val;
	//show_bytes(valp, 1);
	//show_bytes(valp, 2);
	//show_bytes(valp, 3);
	test_show_bytes(val);
	return 0;
}
