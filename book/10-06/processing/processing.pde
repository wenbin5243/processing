PImage img;
img=loadImage("../../img.jpg");
void draw(){
	background(255);
	tint(255,102);
	image(img,0,0,100,100);
	tint(255,204,0,153);
	image(img,20,20,100,100);
}
	