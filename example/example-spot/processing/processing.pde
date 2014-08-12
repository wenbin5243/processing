int concentration=600;

void setup(){
  size(640,360,P3D);
  noStroke();
  fill(204);
  sphereDetail(60);
}

void draw(){
  background(0);
  directionalLight(51,102,126,0,-1,0);

  spotLight(204,153,0,360,160,600,0,0,-1,PI/2,600);

  spotLight(102,153,204,360,mouseY,600,0,0,-1,PI/2,600);

  translate(width/2,height/2,0);
  sphere(120);
}
