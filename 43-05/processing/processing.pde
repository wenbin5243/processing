Spot sp;
void setup(){
  size(100,100);
  smooth();
  noStroke();
  sp=new Spot(33,50,30,1.5);
}
void draw(){
  fill(0,15);
  rect(0,0,width,height);
  fill(255);
  sp.move();
  sp.display();
}

class Spot{
	float x,y;
	float diameter;
  float speed;
  int direction=1;
  Spot(float xpos,float ypos,float dia,float sp){
    x=xpos;
    y=ypos;
    diameter=dia;
    speed=sp;
  }
  void move(){
    y+=(speed*direction);
    if((y>(height-diameter/2))||(y<diameter/2)){
      direction*=-1;
    }
  }
  void display(){
    ellipse(x, y, diameter, diameter);
  }
}