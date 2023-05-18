
#include <stdio.h>
char line[100];
int celsius;
int main(){
	fgets(line, sizeof(line), stdin);	
	sscanf(line, "%d", &celsius);
	float fahr =(9.0/5.0)  * celsius + 32;
	printf("%d celsius converted to fahrenheit is %f ", celsius, fahr);
	return 0;
} 
