float angle;
float jitter;

void setup(){
  size(640,360);
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void draw(){
  background(51);
  if(second()%2==0){
    jitter=random(-0.1,0.1);
  }
  angle=angle+jitter;
  float c=cos(angle);
  translate(width/2,height/2);
  rotate(c);
  rect(0,0,180,180);
}
