PImage arch;

void setup(){
  arch=loadImage("../../img.jpg");
  arch.loadPixels();
}

void draw(){
  background(204);
  int my=constrain(mouseY,0,99);
  for(int i=0;i<arch.height;i++){
    color c=arch.pixels[my*width+i];
    float r=red(c);
    line(i,0,i,height/2+r/6);
  }
}
