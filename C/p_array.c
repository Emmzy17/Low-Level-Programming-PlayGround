#include <stdio.h>

int array[3][2]; /* 2D array */

int main()
{
	int x, y; /* Loop indices */
	array[0][0] = 0 * 10 + 0;
	array[0][1] = 0 * 10 +1;
	array[1][0] = 0 * 10 +0;
	array[1][1] = 0 * 10 +1;
	array[2][0] = 0 * 10 +0;
	array[2][1] = 0 * 10 +1;

	printf("array[%d] ", 0);
	printf("%d", array[0,0]);
	printf("%d ", array[0,1]);
	printf("\n");

	printf("array[%d] ", 1);
	printf("%d ", array[1,0]);
	printf("%d ", array[1,1]);
	printf("\n");

	printf("array[%d] ", 2);
	printf("%d ", array[2,0]);
	printf("%d ", array[2,1]);
	printf("\n");

	return 0;
}
