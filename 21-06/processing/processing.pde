void setup(){
	size(100,100);
	smooth();
	noLoop();
}

void draw(){
	drawX();
}

void drawX(){
	stroke(160);
	strokeWeight(20);
	line(0,5,60,65);
	line(60,5,0,65);
}