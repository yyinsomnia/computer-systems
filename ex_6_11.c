//hit 12 times
float dotprod(float x[], float y[])
{
	float sum = 0.0;
	int i;

	for (i = 0; i < 8; i++)
		sum += x[i] * y[i];
	return sum;
}

int main()
{
	float dotprod(float x[], float y[]);
	float x[12] = [1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,];
	float y[12] = [1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,1.0,];
	float sum;
	sum = dotprod(x, y);
	return 0;
}