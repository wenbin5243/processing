void setup(){
	size(100,100);
	smooth();
	noLoop();
}

void draw(){
	drawX(255);
	drawX(5.5);
	drawX(0,2,44,48,36);
}

void drawX(int gray){
	stroke(gray);
	strokeWeight(20);
	line(0,5,60,65);
	line(60,5,0,65);
}

void drawX(float weight){
	stroke(0);
	strokeWeight(weight);
	line(0,5,60,65);
	line(60,5,0,65);
}

void drawX(int gray,int weight,int x,int y,int size){
	stroke(gray);
	strokeWeight(weight);
	line(x,y,x+size,y+size);
	line(x+size,y,x,y+size);
}
