void setup(){
  size(500,500);
  fill(255);
  smooth();
  noStroke();
  frameRate(33);//帧率，一帧0.33秒
}
void draw(){
  background(#181818);
  println(frameCount);//输出当前帧；
  if((frameCount>0)&&(frameCount<=5)){
    for(i=0;i<16;i++){
      for(j=0;j<16;j++){
        
        if(j%2==0){
          ellipse(i*36-18, j*36, 25, 25);
        }else{
          ellipse(i*36, j*36, 25, 25);
        }
      }
    }
  }  
  if((frameCount>5)&&(frameCount<=50)){
    for(i=0;i<16;i++){
      for(j=0;j<16;j++){
        
        if(j%2==0){
          ellipse(i*36-18+18/45*(frameCount-5), j*36, 25, 25);
        }else{
          ellipse(i*36-18/45*(frameCount-5), j*36, 25, 25);
        }
      }
    }
  }
  if((frameCount>50)&&(frameCount<=55)){
    for(i=0;i<16;i++){
      for(j=0;j<16;j++){
        
        if(j%2==0){
          ellipse(i*36-18+18, j*36, 25, 25);
        }else{
          ellipse(i*36-18, j*36, 25, 25);
        }
      }
    }
  }
  if((frameCount>55)&&(frameCount<=100)){
    for(i=0;i<16;i++){
      for(j=0;j<16;j++){
        if(j%2==0){
          ellipse(i*36-18+18+18/45*(frameCount-55), j*36+18/45*(frameCount-55), 25, 25);
        }else{
          ellipse(i*36-18-18/45*(frameCount-55), j*36-18/45*(frameCount-55), 25, 25);
        }
      }
    }
  }
  if(frameCount==150){
    frameCount=0;
  }
}