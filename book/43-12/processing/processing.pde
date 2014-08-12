Ring[] rings;
int numRings=50;
int currentRing=0;
void setup(){
  size(100,100);
  smooth();
  rings=new Ring(numRings);
  for(int i=0;i<numRings;i++){
    rings[i]=new Ring();
  }
}
void draw(){
  background(0);
  for(int i=0;i<numRings;i++){
    rings[i].grow();
    rings[i].display();
  }
}
void mousePressed(){
  rings[currentRing].start(mouseX,mouseY);
  currentRing++;
  if(currentRing>=numRings){
    currentRing=0;
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