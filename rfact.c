int rfact(int n)
{
	int result;
	if (n <= 1) {
		result = 1;
	} else
		result = n * rfact(n-1);
    return result;
}

