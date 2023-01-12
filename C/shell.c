#include <stdio.h>
int main(){
	char *name[2];
	name[0] = '/bin/sh';
	name[1] =NULL;
	execve("/bin/sh", name, NULL);
	return 0;
}

