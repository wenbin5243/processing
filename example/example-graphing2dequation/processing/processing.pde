void setup(){
	size(640,360);
}

void draw(){
	loadPixels();
	float n=(mouseX*10.0)/width;
	float w=16.0;
	float h=16.0;
	float dx=w/width;
	float dy=h/height;
	float x=-w/2;
	for(int i=0;i<width;i++){
		float y=-h/2;
		for(int j=0;j<height;j++){
			float r=sqrt((x*x)+(y*y));
			float theta=atan2(y,x);
			float val=sin(n*cos(r)+5*theta);

			pixels[i+j*width]=color((val+1.0)*255.0/2.0);
			y+=dy;
		}
		x+=dx;
	}
	updatePixels();
}
