void setup(){
  size(400,400,P3D);
}

void draw(){
  background(0);
  if(mousePressed==true){
    lights();
  }
  noStroke();
  pushMatrix();
  translate(mouseX,mouseY,-500);
  rotateY(PI/6);
  box(400,100,400);
  pushMatrix();
  popMatrix();
  translate(0, -200, 0);
  sphere(150);
  popMatrix();
}