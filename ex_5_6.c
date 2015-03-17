double polyh(double a[], double x, int degree)
{

	long int i;
	double result = a[degree];
	for (i = degree - 1; i >= 0; i--) {
		result = a[i] + result * x;
	}
	return result;
}
/**
 * A: n time add and n time mul
 * B: line 7 --- 3 + 5 = 8
 * 
 */