PImage img;
PImage imgMask;

void setup(){
	size(640,360);
	img=loadImage("../../img.jpg");
	imgMask=loadImage("../../img.jpg");
	img.mask(imgMask);
	imageMode(CENTER);
}

void draw(){
	background(0,102,153);
	image(img,width/2,height/2);
	image(img,mouseX,mouseY);
}