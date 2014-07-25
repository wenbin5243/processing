PImage img;
void setup(){
	img=loadImage("../../img.jpg");
}
void draw() {
  img.copy(50, 0, 50, 100, 0, 0, 50, 100);
  image(img, 0, 0);
}

