int d=51;

void setup(){
	size(100,100);
	int val=d*2;
	fill(val);
}

void draw(){
	int y=60;
	line(0,y,d,y);
	y-=25;
	line(0,y,d,y);
}