PImage img;
img=loadImage("../../img.jpg");
void draw(){
	background(255);
	tint(255,51);
	for(int i=0;i<10;i++){
		image(img,i*10,0);
	}
}
	