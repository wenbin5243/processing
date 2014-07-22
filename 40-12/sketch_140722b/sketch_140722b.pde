PImage arch;
void setup(){
  size(400,300);
  arch=loadImage("../../img.jpg");
}
void draw(){
  background(arch);
  loadPixels();
  for(int i=0;i<width*height;i++){
    color p=pixels[i];
    float r=red(p);
    float g=green(p);
    float b=blue(p);
    float bw=(r+g+b)/3.0;
    bw=constrain(bw+mouseX,0,255);
    pixels[i]=color(bw);
  }
  updatePixels();
  line(mouseX,0,mouseX,height);
}

