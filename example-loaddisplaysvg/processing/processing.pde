PShape bot;

void setup(){
	size(640,360);
	bot=loadShape("../../bot1.svg");
}

void draw(){
	background(102);
	shape(bot,110,90,100,100);
	shape(bot,280,40);
}