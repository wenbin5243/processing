PImage arch;
void setup(){
	arch=loadImage("../../img.jpg");
	size(400,300);
	
}
void draw(){
  int count=arch.width*arch.height;
	arch.loadPixels();
	loadPixels();
	for(int i=0;i<count;i+=2){
	  pixels[i]=arch.pixels[i];
	}
	updatePixels();
}
