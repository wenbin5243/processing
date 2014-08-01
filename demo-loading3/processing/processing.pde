Pie loading;
void setup(){
  size(400,300);
  fill(255);
  smooth();
  frameRate(33);//帧率，一帧0.33秒
}
void draw(){
  background(#294a63);
  noFill();
  stroke(#7badce);
  strokeWeight(8);
  ellipse(width/2, height/2, 100, 100);
  println(frameCount);//输出当前帧；
  
  if((frameCount>=0)&&(frameCount<50)){
    loading=new Pie(PI*3/2/50*frameCount);//实例化
    loading.broder();
    loading.pie();
  }
  if((frameCount>=50)&&(frameCount<52)){;
    loading=new Pie(PI*3/2);
    loading.broder();
    loading.pie();
  }
  if((frameCount>=52)&&(frameCount<102)){
    loading=new Pie(PI*3/2-TWO_PI/50*(frameCount-52));
    loading.broder();
    loading.pie();
  }
  if((frameCount>=102)&&(frameCount<104)){
    loading=new Pie(-PI/2+0.01);
    loading.broder();
    loading.pie();
  }
  if(frameCount==104){
    frameCount=0;
  }

}
  

class Pie{
  float stop;
  //构造函数
  Pie(float tempStop){
    stop=tempStop;
  }
  void broder(){
    stroke(#7badce);
    strokeCap(SQUARE);
    strokeWeight(26);
    stroke(#b53942);
    arc(width/2, height/2, 140, 140, -PI/2, stop);
  }
  void pie(){
    fill(#396b94);
    noStroke();
    arc(width/2,height/2,80,80,-PI/2, stop);
  }
}
