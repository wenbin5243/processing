
PImage img;
void setup(){
	size(640,360);
	img=loadImage("../../img.jpg");
}

void draw(){
	image(img,0,0);
	image(img,0,height/2,img.width/2,img.height/2);
}