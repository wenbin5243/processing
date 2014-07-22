size(400,300);
PImage arch=loadImage("../../img.jpg");
int count=arch.width*arch.height;
arch.loadPixels();
loadPixels();
for(int i=0;i<count;i++){
	pixels[i]=arch.pixels[count-i-1];
}
updatePixels();