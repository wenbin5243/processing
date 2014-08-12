void setup(){
  size(640,360,P3D);
  noStroke();
}

void draw(){
  defineLights();
  background(0);
  for(int x=0;x<=width;x+=60){
    for(int y=0;y<=height;y+=60){
      pushMatrix();
      translate(x,y);
      rotateY(map(mouseX,0,width,0,PI));
      rotateX(map(mouseY,0,height,0,PI));
      box(90);
      popMatrix();
    }
  }
}

void defineLights(){
  pointLight(150,100,0,200,-150,0);
  directionalLight(0,102,255,1,0,0);
  spotLight(255,255,109,0,40,200,0,-0.5,-0.5,PI/2,2);
}
