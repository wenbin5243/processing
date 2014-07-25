class Button{
  int x,y;
  int size;
  color baseGray;
  color overGray;
  color pressGray;
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

class DragButton extends Button{
  int xoff,yoff;

  DragButton(int x,int y,int s,color bv,color ov,color pv){
    super(x,y,s,bv,ov,pv);
  }

  void press(int mx,int my){
    super.press();
    xoff=mx-x;
    yoff=my-y;
  }

  void drag(int mx,int my){
    if(pressed==true){
      x=mx-xoff;
      y=my-yoff;
    }
  }
}

DragButton icon;

void setup(){
  size(100,100);
  smooth();
  color gray=color(204);
  color white=color(255);
  color black=color(0);
  icon=new DragButton(21,42,50,gray,white,black);
}

void draw(){
  background(204);
  icon.update();
  icon.display();
}

void mousePressed(){
  icon.press(mouseX,mouseY);
}

void mouseReleased(){
  icon.release();
}

void mouseDragged(){
  icon.drag(mouseX,mouseY);
}