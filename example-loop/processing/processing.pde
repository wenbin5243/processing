float y;

void setup(){
	size(640,360);
	stroke(255);
	noLoop();

	y=height*0.5;
}

void draw(){
	background(0);
	y=y-1;
	if(y<0){
		y=height;
	}
	line(0,y,width,y);
}

void mousePressed(){
	loop();
}