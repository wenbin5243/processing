Button button1,button2,button3;
int mode=1;
void setup(){
  size(100,100);
  smooth();
  color gray=color(204);
  color white=color(255);
  color black=color(0);
  button1=new Button(10,80,10,gray,white,black);
  button2=new Button(25,80,10,gray,white,black);
  button3=new Button(40,80,10,gray,white,black);
  
}
void draw(){
  background(204);
  manageButtons();
  noStroke();
  fill(0);
  if(mode==1){
    ellipse(0,40,60,60);
  }else if(mode==2){
    ellipse(50,40,60,60);
  }else if(mode==3){
    ellipse(100,40,60,60);
  }
}

void manageButtons(){
  button1.update();
  button2.update();
  button3.update();
  button1.display();
  button2.display();
  button3.display();
}

void mousePressed(){
  if(button1.press()==true){
    mode=1;
  }
  if(button2.press()==true){
    mode=2;
  }
  if(button3.press()==true){
    mode=3;
  }
}

void mouseReleased(){
  button1.release();
  button2.release();
  button3.release();
}

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

