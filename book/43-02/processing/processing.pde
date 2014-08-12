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
  ellipse(sp.x, sp.y, sp.diameter, sp.diameter);
}
class Spot{
	float x,y;
	float diameter;
}