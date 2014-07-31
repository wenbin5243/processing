void setup(){
  size(440,330);
  fill(255);
  smooth();
  stroke(255);
  strokeWeight(10);
  frameRate(33);//帧率，一帧0.33秒
}
void draw(){
  background(#cb876b);
  println(frameCount);//输出当前帧；
  if((frameCount>=13)&&(frameCount<20)){
    line(width/2,208,width/2,208-106/7*(frameCount-13));
  }
  if(frameCount>=20){
    line(width/2,208,width/2,208-106+10);
  }
  if((frameCount>=19)&&(frameCount<25)){
    point(width/2, 102-(102-58)/6*(frameCount-19));
  }
  if((frameCount>=25)&&(frameCount<29)){
    point(width/2, 102-(102-97)/4*(frameCount-25));
  }
  if(frameCount==150){
    frameCount=0;
  }

}