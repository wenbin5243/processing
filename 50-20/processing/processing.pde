FixedSpring s1,s2;
float gravity=1.2; 

void setup(){
  size(100,100);
  smooth();
  fill(0);
  s1=new FixedSpring(45,33,1.5,gravity,40.0);
  s2=new FixedSpring(55,66,1.5,gravity,40.0);
}

void draw(){
  background(204);
  s1.update(s2.x,s2.y);
  s2.update(s1.x,s1.y);
  s1.display(s2.x,s2.y);
  s2.display(s1.x,s1.y);
  if(mousePressed==true){
    s1.x=mouseX;
    s1.y=mouseY;
  }
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
