Radio[] buttons=new Radio[2];

void setup(){
  size(100,100);
  smooth();
  buttons[0]=new Radio(33,50,30,color(255),color(0),0,buttons);
  buttons[1]=new Radio(66,50,30,color(255),color(0),1,buttons);
}

void draw(){
  background(204);
  buttons[0].display();
  buttons[1].display();
}

void mousePressed(){
  buttons[0].press(mouseX,mouseY);
  buttons[1].press(mouseX,mouseY);
}

class Radio{
  int x,y;
  int size,dotSize;
  color baseGray,dotGray;
  boolean checked=false;
  int me;
  Radio[] others;

  Radio(int xp,int yp,int s,color b,color d,int m,Radio[] o){
    x=xp;
    y=yp;
    size=s;
    dotSize=size-size/3;
    baseGray=b;
    dotGray=d;
    others=o;
    me=m;
  }

  boolean press(float mx,float my){
    if(dist(x,y,mx,my)<size/2){
      checked=true;
      for(int i=0;i<others.length;i++){
        if(i != me){
          others[i].checked=false;
        }
      }
      return true;
    }else{
      return false;
    }
  }

  void display(){
    noStroke();
    fill(baseGray);
    ellipse(x, y, size, size);
    if(checked==true){
      fill(dotGray);
      ellipse(x, y, dotSize, dotSize);
    }
  }
}