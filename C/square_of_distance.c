#include <stdio.h>
#include <math.h>
char line[100];
int x1;
int x2;
int pointy1;
int	pointy2;

int main(){
	printf("Enter point number in the format of x1 y1 x2 y2: ");
	fgets(line, sizeof(line), stdin);
	sscanf(line, "%d %d %d %d", &x1, &pointy1, &x2, &pointy2);
	int dist =  (x1 - pointy1) / (x2 - pointy2);
	int dist_square = pow(dist, 2);

	printf("Distance between point are %d and square of that distance %d", dist, dist_square);
	return 0; 

}
