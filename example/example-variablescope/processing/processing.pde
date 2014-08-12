int a=80;
void setup(){
	size(640,360);
	background(0);
	stroke(255);
	noLoop();
}

void draw(){
	line(a,0,a,height);
	for(int a=120;a<200;a+=2){
		line(a,0,a,height);
	}

	int a=300;
	line(a,0,a,height);
	drawAnotherLine();
	drawYetAnotherLine();
}

void drawAnotherLine(){
	int a=320;
	line(a,0,a,height);
}

void drawYetAnotherLine(){
	line(a+2,0,a+2,height);
}