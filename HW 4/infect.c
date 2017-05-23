//Steve Sun(ss8ee)
//infect.c
//Feb 24th

#include<stdio.h>
#include<stdlib.h>

int main(){
  FILE *fp;
  FILE *fw;
  int counter = 0;
  unsigned char buffer[7359];
  unsigned char newBuf[7359];

  fp = fopen ("./target.exe", "rb");
  fw = fopen ("./infected-target.exe","wb");
  fread(buffer,sizeof(buffer),1,fp);
  
  while (counter < 1046) {
    newBuf[counter] = buffer[counter];
    counter ++;
  }
  unsigned char temp[7] = {(char)201,(char)104,(char)52,(char)132,(char)4,(char)8,(char)195};
  int i;
  for (i = 0; i < 7; i++)
    newBuf[counter + i] = temp[i];
  counter += 7;
  while (counter < 7359) {
    newBuf[counter] = buffer[counter];
    counter++;
  }

  fwrite(newBuf,sizeof(buffer),1,fw);
  fclose(fp);
  fclose(fw);
  return 0;
}
