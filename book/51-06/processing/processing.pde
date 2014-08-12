void setup(){
  size(400,400,P3D);
  fill(204);
}

void draw(){
  background(0);
  lights();
  camera(30.0,mouseY,220.0,0.0,0.0,0.0,0.0,1.0,0.0);
  noStroke();
  box(90);
  stroke(255);
  line(-100,0,0,100,0,0);
  line(0,-100,0,0,100,0);
  line(0,0,-100,0,0,100);
}