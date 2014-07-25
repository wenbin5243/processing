size(400,300);
PImage arch=loadImage("../../img.jpg");
void draw(){
	background(arch);
	loadPixels();
	for(int i=0;i<width*height;i++){
		color p=pixels[i];
		float r=255-red(p);
		float g=255-green(p);
		float b=255-blue(p);
		pixels[i]=color(r,g,b);
	}
	updatePixels();
}
	