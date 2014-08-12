PShape usa;
PShape michigan;
PShape ohio;

void setup(){
	size(640,360);
	usa=loadShape("../../usa-wikipedia.svg");
	michigan=usa.getChild("MI");
	ohio=usa.getChild("OH");
}

void draw(){
	background(255);
	shape(usa,-600,-180);
	michigan.disableStyle();
	fill(0,51,102);
	noStroke();
	shape(michigan, -600, -180);

	ohio.disableStyle();
	fill(153,0,0);
	noStroke();
	shape(ohio, -600, -180);
}
