class Egg{
  float x,y;
  float tilt;
  float angle;
  float scalar;
  Egg(int xpos,int ypos,float t,float s){
    x=xpos;
    y=ypos;
    tilt=t;
    scalar=s/100.0;
  }
  void wobble(){
    tilt=cos(angle)/8;
    angle+=0.1;
  }
  void display(){
    noStroke();
    fill(255);
    pushMatrix();
    translate(x, y);
    rotate(tilt);
    scale(scalar);
    beginShape();
    vertex(0,-100);
    bezierVertex(25, -100, 40, -65, 40,-40);
    bezierVertex(40, -15, 25, 0, 0,0);
    bezierVertex(-25, 0, -40, -15, -40,-40);
    bezierVertex(-40, -65, -25, -100, 0,-100);
    endShape();
    popMatrix();
  }
}

class Ring{
  float x,y;
  float diameter;
  boolean on = false;
  void start(float xpos,float ypos){
    x=xpos;
    y=ypos;
    on=true;
    diameter=1;
  }
  void grow(){
    if(on==true){
      diameter+=0.5;
      if(diameter>400){
        on=false;
      }
    }
  }
  void display(){
    if(on==true){
      noFill();
      strokeWeight(4);
      stroke(155,153);
      ellipse(x, y, diameter, diameter);
    }
  }
}

class EggRing{
  Egg ovoid;
  Ring circle=new Ring();

  EggRing(int x,int y,float t,float sp){
    ovoid=new Egg(x,y,t,sp);
    circle.start(x,y-sp/2);
  }

  void transmit(){
    ovoid.wobble();
    ovoid.display();
    circle.grow();
    circle.display();
    if(circle.on==false){
      circle.on=true;
    }
  }
}

EggRing er1,er2;

void setup(){
  size(100,100);
  smooth();
  er1=new EggRing(33,66,0.1,33);
  er2=new EggRing(66,90,0.05,66);
}

void draw(){
  background(0);
  er1.transmit();
  er2.transmit();
}