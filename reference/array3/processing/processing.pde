int degrees=360;
float[] cos_vals=new float[degrees];
for(int i=0;i<degrees;i++;){
	cos_vals[i]=cos(TWO_PI/degrees*i);
	println(cos_vals[i]);
}