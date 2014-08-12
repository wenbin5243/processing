int scaleValue=3;
int xoffset=0;
int yoffset=0;
void setup(){
	size(600,600);
	stroke(0,100);
}

void draw(){
	scale(scaleValue);
	translate(xoffset*(-width/scaleValue), yoffset*(-height/scaleValue));
	line(10,150,500,50);
	line(0,600,600,0);
	setOffset();
}

void setOffset(){
	save("lines-"+xoffset+"-"+yoffset+".jpg");
	xoffset++;
	if(xoffset==scaleValue){
		xoffset=0;
		yoffset++;
		if(yoffset==scaleValue){
			exit();
		}
	}
	background(204);
}