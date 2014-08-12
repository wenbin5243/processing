EggRing er1,er2;

void setup(){
  size(640,360);
  er1=new EggRing(width*0.45,height*0.5,0.1,120);
  er2=new EggRing(width*0.65,height*0.8,0.05,180);
}

void draw(){
  background(0);
  er1.transmit();
  er2.transmit();
}

class EggRing{
  Egg ovoid;
  Ring circle=new Ring();
  EggRing(float x,float y,float t,float sp){
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

class Egg{
  float x,y;
  float tilt;
  float angle;
  float scalar;

  Egg(float xpos,float ypos,float t,float s){
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
    translate(x,y);
    rotate(tilt);
    scale(scalar);
    beginShape();
    vertex(0,-100);
    bezierVertex(25,-100,40,-65,40,-40);
    bezierVertex(40,-15,25,0,0,0);
    bezierVertex(-25,0,-40,-15, -40,-40);
    bezierVertex(-40,-65,-25,-100,0,-100);
    endShape();
    popMatrix();
  }
}

class Ring{
  float x,y;
  float diameter;
  boolean on=false;

  void start(float xpos,float ypos){
    x=xpos;
    y=ypos;
    on=true;
    diameter=1;
  }

  void grow(){
    if(on==true){
      diameter+=0.5;
      if(diameter>width*2){
        diameter=0.0;
      }
    }
  }

  void display(){
    if(on==true){
      noFill();
      strokeWeight(4);
      stroke(155,153);
      ellipse(x,y,diameter,diameter);
    }
  }
}
