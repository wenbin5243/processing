void setup(){
  size(400,400,P3D);
}

void draw(){
  background(0);
  lights();
  translate(width/2, height/2);
  rotateY(map(mouseX,0,width,0,PI));
  rotateZ(map(mouseY,0,height,0,-PI));
  noStroke();
  fill(255,255,255);
  translate(0, -40, 0);
  drawCylinder(10,180,200,16);
  //drawCylinder(70,70,120,64);
  //drawCylinder(0,180,200,4);
}

void drawCylinder(float topRadius,float bottomRadius,float tall,int sides){
  float angle=0;
  float angleIncrement=TWO_PI/sides;
  beginShape(QUAD_STRIP);
  for(int i=0;i<sides+1;i++){
    vertex(topRadius*cos(angle), 0, topRadius*sin(angle));
    vertex(bottomRadius*cos(angle), tall, bottomRadius*sin(angle));
    angle+=angleIncrement;
  }
  endShape();

  if(topRadius!=0){
    angle=0;
    beginShape(TRIANGLE_FAN);
    vertex(0,0,0);
    for(int i=0;i<sides+1;i++){
      vertex(topRadius*cos(angle),0,topRadius*sin(angle));
      angle+=angleIncrement;
    }
    endShape();
  }

  if(bottomRadius!=0){
    angle=0;
    beginShape(TRIANGLE_FAN);
    vertex(0,tall,0);
    for(int i=0;i<sides+1;i++){
      vertex(bottomRadius*cos(angle),tall,bottomRadius*sin(angle));
      angle+=angleIncrement;
    }
    endShape();
  }
}
