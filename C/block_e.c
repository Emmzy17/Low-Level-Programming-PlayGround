#include <stdio.h>

int main(){
	char horizontal[] ="* * * *";
	char vertical = '*';
	
	printf("%s\n%c\n%c\n%s\n%c\n%c\n%s", horizontal, vertical, vertical, horizontal, vertical, vertical, horizontal);

	return 0; 
}
