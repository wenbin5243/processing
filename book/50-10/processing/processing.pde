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

class LimiteParticle extends Particle{
  float friction=0.99;

  LimiteParticle(int ix,int iy,float ivx,float ivy,float ir){
    super(ix,iy,ivx,ivy,ir);
  }

  void update(){
    vy*=friction;
    vx*=friction;
    super.update();
    limit();
  }
  void limit(){
    if(y>height-radius){
      vy=-vy;
      y=constrain(y,-height*height,height-radius);
    }
    if((x<radius)||(x>width-radius)){
      vx=-vx;
      x=constrain(x, radius, width-radius);
    }
  }
}

int num=80;
LimiteParticle[] p=new LimiteParticle[num];
float radius=1.2;

void setup(){
  size(100,100);
  noStroke();
  smooth();
  for(int i=0;i<p.length;i++){
    float velX=random(-2,2);
    float velY=-i;
    p[i]=new LimiteParticle(width/2,height/2,velX,velY,2.2);
  }
}

void draw(){
  fill(0,24);
  rect(0,0,width,height);
  fill(255);
  for(int i=0;i<p.length;i++){
    p[i].update();
    p[i].display();
  }
}
