Button button;
void setup(){
  size(100,100);
  button=new Button(25,25,50,color(204),color(255),color(0));
}
void draw(){
  background(204);
  stroke(255);
  button.update();
  button.display();
}

void mousePressed(){
  button.press();
}

void mouseReleased(){
  button.release();
}

class Button{
  int x,y;
  int size;
  color baseGray;
  color overGray;
  color pressGary;
  boolean over=false;
  boolean pressed=false;

  Button(int xp,int yp,int s,color b,color o,color p){
    x=xp;
    y=yp;
    size=s;
    baseGray=b;
    overGray=o;
    pressGray=p;
  }

  void update(){
    if((mouseX >= x)&&(mouseX <= x+size)&&(mouseY>=y)&&(mouseY<y+size)){
      over=true;
    }else{
      over=false;
    }
  }

  boolean press(){
    if(over==true){
      pressed=true;
      return true;
    }else{
      return false;
    }
  }

  void release(){
    pressed=false;
  }

  void display(){
    if(pressed == true){
      fill(pressGray);
    }else if(over==true){
      fill(overGray);
    }else{
      fill(baseGray);
    }
    stroke(255);
    rect(x,y,size,size);
  }
}
