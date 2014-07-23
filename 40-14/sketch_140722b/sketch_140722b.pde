PImage arch;
int index;
void setup(){
  size(100,100);
  smooth();
  fill(0);
  arch=loadImage("../../img.jpg");
  arch.loadPixels();
}

void draw(){
  background(204);
  color c=arch.pixels[index];
  float r=red(c)/3.0;
  ellipse(width/2,height/2,r,r);
  index++;
  if(index==width*height){
    index=0;
  }
}
