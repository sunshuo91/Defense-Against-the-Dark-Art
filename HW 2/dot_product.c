//Steve Sun(ss8ee)
//dot_product.s
//Feb 3rd

float dot_product(float v1[], float v2[], int l){
	float r = 0;
	int i;
	for (i = 0; i < l; i++)
		r += v1[i] * v2[i];
	return r;
}
