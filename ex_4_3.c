/*
 * my mac and ubuntu are both x86-64.
 * so use gcc -S -m32 to compile c file to IA32 assembly language
 */

int rSum(int *Start, int Count)
{
	if (Count <= 0)
		return 0;
	return *Start + rSum(Start+1, Count-1);
}
