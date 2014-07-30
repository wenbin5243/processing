int x=50;
int y=100;
int a=35;
int n=3;

void setup(){
	size(100,100);
	noLoop();
}

void draw(){
	drawT(x,y,a,n);
}

void drawT(int x,int y,int apex,int num){
	line(x,y,x,y-apex);
	line(x-apex,y-apex,x+apex,y-apex);
	if(num>0){
		drawT(x-apex,y-apex,apex/2,num-1);
        drawT(x+apex,y-apex,apex/2,num-1);
	}
	
}
