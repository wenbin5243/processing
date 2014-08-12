int numChecks=25;
Check[] checks=new Check[numChecks];

void setup(){
  size(100,100);
  int x=14;
  int y=14;
  for(int i=0;i<numChecks;i++){
    checks[i]=new Check(x,y,12,color(0));
    x+=15;
    if(x>80){
      x=14;
      y+=15;
    }
  }
}

void draw(){
  background(204);
  for(int i=0;i<numChecks;i++){
    checks[i].display();
  }
}

void mousePressed(){
  for(int i=0;i<numChecks;i++){
    checks[i].press(mouseX,mouseY);
  }
}

class Check{
  int x,y;
  int size;
  color baseGray;
  boolean checked=false;

  Check(int xp,int yp,int s,color b){
    x=xp;
    y=yp;
    size=s;
    baseGray=b;
  }

  void press(float mx,float my){
    if((mx>=x)&&(mx<=x+size)&&(my>y)&&(my<=y+size)){
      checked=!checked;
    }
  }

  void display(){
    stroke(255);
    fill(baseGray);
    rect(x,y,size,size);
    if(checked==true){
      line(x,y,x+size,y+size);
      line(x+size,y,x,y+size);
    }
  }
}