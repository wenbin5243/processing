PImage img;
void setup(){
	img=loadImage("../../img.jpg");
}
void draw(){
	image(img,0,0);
	img.filter(INVERT);
	image(img,50,0);
	noLoop();
}
	