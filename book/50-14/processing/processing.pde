float y1,y2;
float velocity1,velocity2;
float mass1=1.0;
float mass2=6.0;
float stiffness=0.1;
float damping=0.9;

void setup(){
  size(100,100);
  noStroke();
}

void draw(){
  fill(0,12);
  rect(0,0,width,height);
  fill(255);

  float targetY=mouseY;

  float forceA=stiffness*(targetY-y1);
  float acceleerationY1=forceA/mass1;
  velocity1=damping*(velocity1+acceleerationY1);
  y1+=velocity1;
  rect(10,y1,40,15);

  float forceB=stiffness*(targetY-y2);
  float acceleerationY2=forceB/mass2;
  velocity2=damping*(velocity2+acceleerationY2);
  y2+=velocity2;
  rect(50,y2,40,15);
}