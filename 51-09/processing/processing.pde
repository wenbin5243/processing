int tubeRes=32;
float[] tubeX=new float[tubeRes];
float[] tubeY=new float[tubeRes];

PImage img;

void setup(){
  size(400,400,P3D);
  img=loadImage("../img.jpg");
  float angle=270.0/tubeRes;
  for(int i=0;i<tubeRes;i++){
    tubeX[i]=cos(radians(i*angle));
    tubeY[i]=sin(radians(i*angle));
  }
  noStroke();
}

void draw(){
  background(0);
  translate(width/2, height/2);
  rotateY(map(mouseX,0,width,0,PI));
  rotateX(map(mouseY,0,height,0,PI));
  beginShape(QUAD_STRIP);
  texture(img);
  for(int i=0;i<tubeRes;i++){
    float x=tubeX[i]*100;
    float z=tubeY[i]*100;
    float u=img.width/tubeRes*i;
    vertex(x,-100,z,u,0);
    vertex(x,100,z,u,img.height);
  }
}
