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

Check check;
void setup(){
  size(100,100);
  check=new Check(25,25,50,color(0));
}

void draw(){
  background(204);
  check.display();
}

void mousePressed(){
  check.press(mouseX,mouseY);
}
