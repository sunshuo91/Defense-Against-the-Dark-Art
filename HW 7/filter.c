//Steve Sun (ss8ee)
//March 25th

#include <stdio.h>
#include <stdlib.h>

int main(){
	FILE *fr;
	int counter = 0;
	unsigned char buffer[7359];

	fr = freopen(NULL,"rb",stdin);
	fread(buffer,sizeof(buffer),1,fr);

	int i;

	for (i = 0; i < 7359; i++) {
		if ((int)buffer[i] < 10)
			printf("0%x",buffer[i]);
		else
			printf("%x", buffer[i]);
	}

	fclose(fr);
	return 0;

}
