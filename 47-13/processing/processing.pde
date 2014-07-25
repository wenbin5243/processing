int numButtons=7;
Radio[] buttons=new Radio[numButtons];

void setup(){
  size(100,100);
  smooth();
  for(int i=0;i<buttons.length;i++){
    int x=i*12+14;
    buttons[i]=new Radio(x,50,10,color(255),color(0),i,buttons);
  }
}

void draw(){
  background(204);
  for(int i=0;i<buttons.length;i++){
    buttons[i].display();
  }
}

void mousePressed(){
  for(int i=0;i<buttons.length;i++){
    buttons[i].press(mouseX,mouseY);
  }
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