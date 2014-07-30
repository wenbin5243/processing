int x=20;
int y=80;
int g=26;

void setup(){
	size(100,100);
	smooth();
	fill(0);
	noLoop();
}

void draw(){
	background(204);
	face(x,y,g);
}

void face(int x,int y,int gap){
	line(x,0,x,y);
	line(x,y,x+gap,y);
	int mouthY=height-(height-y)/2;
	line(x,mouthY,x+gap,mouthY);
	noStroke();
	ellipse(x-gap/2,y/2,5,5);
	ellipse(x+gap,y/2,5,5);
}