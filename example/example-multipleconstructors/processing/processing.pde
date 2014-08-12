Spot sp1,sp2;

void setup(){
  size(640,360);
  background(204);
  noLoop();

  sp1=new Spot();
  sp2=new Spot(width*0.5,height*0.5,120);
}

void draw(){
  sp1.display();
  sp2.display();
}

class Spot{
  float x,y,radius;

  Spot(){
    radius=40;
    x=width*0.25;
    y=height*0.5;
  }

  Spot(float xpos,float ypos,float r){
    x=xpos;
    y=ypos;
    radius=r;
  }

  void display(){
    ellipse(x,y,radius*2,radius*2);
  }
}