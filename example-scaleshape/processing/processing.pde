PShape bot;

void setup(){
	size(640,360);
	bot=loadShape("../../bot1.svg");
}

void draw(){
	background(127);
	translate(width/2,height/2);
	float zoom=map(mouseX,0,width,0.1,4.5);
	scale(zoom);
	shape(bot,-140,-140);
}