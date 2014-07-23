Spot sp;

void setup(){
  size(100,100);
  smooth();
  noStroke();
  sp=new Spot();
  sp.x=33;
  sp.y=50;
  sp.diameter=30;
}
void draw(){
  background(0);
  sp.display();
}
class Spot{
	float x,y;
	float diameter;
  void display(){
    ellipse(x, y, diameter, diameter);
  }
}