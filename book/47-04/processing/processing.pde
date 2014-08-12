OverRect r=new OverRect(9,30,36);
OverCircle c=new OverCircle(72,48,40);
void setup(){
  size(100,100);
  noStroke();
  smooth();
}

void draw(){
  background(204);
  r.update(mouseX,mouseY);
  r.display();
  c.update(mouseX,mouseY);
  c.display();
}

class OverCircle{
  int x,y;
  int diameter;
  int gray;

  OverCircle(int xp,int yp,int d){
    x=xp;
    y=yp;
    diameter=d;
    gray=0;
  }

  void update(int mx,int my){
    if(dist(mx,my,x,y)<diameter/2){
      if(gray<250){
        gray++;
      }
    }else{
      if(gray>0){
        gray--;
      }
    }
  }

  void display(){
    fill(gray);
    ellipse(x, y, diameter, diameter);
  }
}

class OverRect{
  int x,y;
  int size;
  int gray;
  OverRect(int xp,int yp,int s){
    x=xp;
    y=yp;
    size=s;
    gray=0;
  }

  void update(int mx,int my){
    if((mx>x)&&(mx<x+size)&&(my>y)&&(my<y+size)){
      if(gray<250){
        gray++;
      }
    }else{
      if(gray>0){
        gray--;
      }
    }
  }

  void display(){
    fill(gray);
    rect(x,y,size,size);
  }
}
