PImage arch=loadImage("../../img.jpg");
void setup(){
	size(400,300);
	PImage arch=loadImage("../../img.jpg");
}
void draw(){
	int count=arch.width * arch.height;
	arch.loadPixels();
	loadPixels();
	for(int i=0;i<count;i++){
		pixels[i]=arch.pixels[i/2];
	}
	updatePixels();
}
	