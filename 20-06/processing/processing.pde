float y=0.0;

void draw(){
	frameRate(30);
	background(y*2.5);
	y=y+0.5;
	line(0,y,100,y);
	if(y>100){
		y=0;
	}
}