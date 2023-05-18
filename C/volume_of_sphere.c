
#include <stdio.h> 
char line[100];
int volume;
float radius;
int main(){
	printf("Input the radius of the sphere to find its volume: ");
	fgets(line, sizeof(line), stdin);
	sscanf(line, "%f", &radius);
	volume = (4.0/3.0) * 3.141592654 * (radius * radius * radius);
	printf(" The volume of the sphere with radius %fcm is %f", radius, volume);
	return 0; 
}
