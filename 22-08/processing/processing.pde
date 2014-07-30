int x=50;
int y=100;
int a=35;

void setup(){
	size(100,100);
	noLoop();
}

void draw(){
	drawT(x,y,a);
}

void drawT(int xpos,int ypos,int apex){
	line(xpos,ypos,xpos,ypos-apex);
	line(xpos-(apex/2),ypos-apex,xpos+(apex/2),ypos-apex);
}