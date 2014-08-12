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

class ArrowParticle extends Particle{
  float angle=0.0;
  float shaftLength=20.0;

  ArrowParticle(int ix,int iy,float ivx,float ivy,float ir){
    super(ix,iy,ivx,ivy,ir);
  }

  void update(){
    super.update();
    angle=atan2(vy,vx);
  }
  void display(){
    stroke(255);
    pushMatrix();
    translate(x, y);
    rotate(angle);
    scale(shaftLength);
    strokeWeight(1.0/shaftLength);
    line(0,0,1,0);
    line(1,0,0.7,-0.3);
    line(1,0,0.7,0.3);
    popMatrix();
  }
}

int num=320;
ArrowParticle[] p=new ArrowParticle[num];
float radius=1.2;

void setup(){
  size(600,100);
  smooth();
  for(int i=0;i<p.length;i++){
    float velX=random(1,8);
    float velY=random(-5,-1);
    p[i]=new ArrowParticle(0,height/2,velX,velY,1.2);
  }
}

void draw(){
  background(0);
  for(int i=0;i<p.length;i++){
    p[i].update();
    p[i].display();
  }
}
