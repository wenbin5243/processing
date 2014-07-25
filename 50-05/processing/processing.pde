class Particle{
  float x,y;
  float vx,vy;
  float radius;
  float gravity=0.1;

  Particle(int xpos,int ypos,float velx,float vely,float r){
    x=xpos;
    y=ypos;
    vx=velx;
    vy=vely;
    radius=r;
  }

  void update(){
    vy=vy+gravity;
    y+=vy;
    x+=vx;
  }

  void display(){
    ellipse(x,y,radius*2,radius*2);
  }
}

Particle p;

void setup(){
  size(100,100);
  noStroke();
  smooth();
  p=new Particle(0,height,2.2,-4.2,20.0);
}

void draw(){
  fill(0,12);
  rect(0,0,width,height);
  fill(255);
  p.update();
  p.display();
}
