PShape bot;
void setup(){
	size(640,360);
	bot=loadShape("../../bot1.svg");
	noLoop();
}

void draw(){
	background(102);

	bot.disableStyle();
	fill(0,102,153);
	stroke(255);
	shape(bot,20,25,300,300);

	bot.enableStyle();
	shape(bot,320,25,300,300);
}
