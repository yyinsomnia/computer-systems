/**
 * want the x's lowest byte and the rest of the y
 */
int merge_two(int x, int y) {
	int mask = 0xFF;
	return (x & mask) | (y & (~mask));
}
