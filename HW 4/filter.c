//Steve Sun (ss8ee)
//March 25th

#include <stdio.h>
#include <stdlib.h>

int main(){
	FILE *fp;

	int counter = 0;
	unsigned char buffer[7359];

	fp = fopen("./infected-target.exe", "rb");
	fread(buffer,sizeof(buffer),1,fp);

	int i;

	for (i = 0; i < 50; i++) {
		unsigned char temp = buffer[i];
		printf("%x", temp);
	}

	fclose(fp);
	return 0;

}