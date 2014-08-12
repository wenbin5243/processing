PImage arch;
void setup(){
	size(400,300);
	noStroke();
	arch=loadImage("../../img.jpg");
}
void draw(){
	background(arch);
	int mx=constrain(mouseX,0,99);
	int my=constrain(mouseY,0,99);
	loadPixels();
	color c=pixels[my*width+mx];
	fill(c);
	rect(20,20,60,60);
}
