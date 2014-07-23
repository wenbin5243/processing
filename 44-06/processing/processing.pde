int currentFrame=0;
PImage[] frames=new PImage[12];
int lastTime=0;

void setup(){
  size(100,100);
  smooth();
  strokeWeight(4);
  background(204);
  for(int i=0;i<frames.length;i++){
    frames[i]=get();
  }
}

void draw(){
  int currentTime=millis();
  if(currentTime>lastTime+100){
    nextFrame();
    lastTime=currentTime;
  }
  if(mousePressed==true){
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
}

void nextFrame(){
  frames[currentFrame]=get();
  currentFrame++;
  if(currentFrame>=frames.length){
    currentFrame=0;
  }
  image(frames[currentFrame],0,0);
}