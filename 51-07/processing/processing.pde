void setup(){
  size(400,400,P3D);
  noStroke();
  colorMode(RGB,1);
  fill(0.4);
}

void draw(){
  background(0);
  translate(width/2, height/2);
  lightSpecular(1,1,1);
  directionalLight(0.8,0.8,0.8,0,0,-1);
  float s=mouseX/float(width);
  specular(s,s,s);
  sphere(100);
}