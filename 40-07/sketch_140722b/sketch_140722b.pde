PImage arch=loadImage("../../img.jpg");
size(400,300);
int count=arch.width*arch.height;
arch.loadPixels();
loadPixels();
for(int i=0;i<count;i+=2){
  pixels[i]=arch.pixels[i];
}
updatePixels();
