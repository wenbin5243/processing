float a=0.0;
float rSize;

void setup(){
  size(640,360,P3D);
  rSize=width/6;
  noStroke();
  fill(204,204);
}

void draw(){
  background(126);
  a+=0.005;
  if(a>TWO_PI){
    a=0.0;
  }

  translate(width/2, height/2);
  rotateX(a);
  rotateY(a*2.0);
  fill(255);
  rect(-rSize,-rSize,rSize*2,rSize*2);
  rotateX(a*1.001);
  rotateY(a*2.002);
  fill(0);
  rect(-rSize,-rSize,rSize*2,rSize*2);
}
