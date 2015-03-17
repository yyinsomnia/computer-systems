double ploy(double a[], double x, int degree)
{
	long int i;
	double result = a[0];
	double xpwr = x;
	for (i = 1; i <= degree; i++) {
		result = result + a[i] * xpwr;
		xpwr = xpwr * x;
	}
	return result;
}
/**
 * A: n time add and 2n time mul
 * B: line 7 --- 5 + 3 = 8, line 8 --- 4 
 *    line 8 don't depend on line 7, so if cpu has not only one mul unit, they can run parallel 
 *    but, CPE seems equal 8.00, not 5.00?
 */

 double ploy_opt(double a[], double x, int degree)
{
	int item_old, item_new;
	long int i;
	double result = 0;
	double xpwr = x;
	
	item_old = item_new = a[0];
	for (i = 1; i <= degree; i++) {
		result = result + item_old;
		item_old = item_new;
		item_new = a[i] * xpwr;
		xpwr = xpwr * x;
	}
	result += item[degree];
	return result;
}