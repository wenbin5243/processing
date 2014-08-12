Spot sp;

void setup(){
  size(100,100);
  smooth();
  noStroke();
  sp=new Spot(33,50,30);
}
void draw(){
  background(0);
  sp.display();
}
class Spot{
	float x,y;
	float diameter;
  Spot(float xpos,float ypos,float dia){
    x=xpos;
    y=ypos;
    diameter=dia;
  }
  void display(){
    ellipse(x, y, diameter, diameter);
  }
}