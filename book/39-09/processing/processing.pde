PImage img;
void setup(){
	img=loadImage("../../img.jpg");
}
void draw(){
	image(img,0,0);
	copy(0,0,100,50,0,50,100,50);
}
