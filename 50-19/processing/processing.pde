FixedSpring s;
float gravity=0.5; 

void setup(){
  size(100,100);
  smooth();
  fill(0);
  s=new FixedSpring(0.0,50.0,1.0,gravity,40.0);
}

void draw(){
  background(204);
  s.update(mouseX,mouseY);
  s.display(mouseX,mouseY);
}

class Spring2D{
  float vx,vy;
  float x,y;
  float gravity;
  float mass;
  float radius=10;
  float stiffness=0.2;
  float damping=0.7;

  Spring2D(float xpos,float ypos,float m,float g){
    x=xpos;
    y=ypos;
    mass=m;
    gravity=g;
  }

  void update(float targetX,float targetY){
    float forceX=(targetX-x)*stiffness;
    float ax=forceX/mass;
    vx=damping*(vx+ax);
    x+=vx;
    float forceY=(targetY-y)*stiffness;
    forceY+=gravity;
    float ay=forceY/mass;
    vy=damping*(vy+ay);
    y+=vy;
  }

  void display(float nx,float ny){
    noStroke();
    ellipse(x, y, radius*2, radius*2);
    stroke(255);
    line(x,y,nx,ny);
  }
}

class FixedSpring extends Spring2D{
  float springLength;

  FixedSpring(float xpos,float ypos,float m,float g,float s){
    super(xpos,ypos,m,g);
    springLength=s;
  }

  void update(float newX,float newY){
    float dx=x-newX;
    float dy=y-newY;
    float angle=atan2(dy,dx);
    float targetX=newX+cos(angle)*springLength;
    float targetY=newY+sin(angle)*springLength;
    super.update(targetX,targetY);
    x=constrain(x, radius, width-radius);
    y=constrain(y, radius, height-radius);
  }
}
