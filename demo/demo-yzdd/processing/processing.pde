Bubble[] bubble=new Bubble[20];//泡泡
Wave[] wave=new Wave[20];//波形
boolean press = false;//鼠标是否点击
boolean release = false;//鼠标是否松开
int pressedRate;//点击后的帧数
int releaseRate;//释放后的帧数
//只执行一次
void setup() {
  size(320, 480,P3D);
  for(int i=0;i<20;i++){
    //实例化
    bubble[i]=new Bubble(random(width),random(height),random(0,400));
  } 
}
//连续执行
void draw() {
  smooth();
  background(#014db5);
  
  for(int i=0;i<20;i++){   
    //待机状态
    if(press==false&&release==false){
      pushMatrix();
      bubble[i].bubbling();
      popMatrix();
    }
    //点击鼠标，监听  
    if(press==true&&release==false){
      pressedRate++;
      //泡泡聚拢
      if(pressedRate<=1000){
        pushMatrix();
        bubble[i].gather();
        popMatrix();
      }
      //方块停顿一秒
      if(pressedRate>1000&&pressedRate<=2000){
        pushMatrix();
        wave[i].display();
        popMatrix();
      }
      //方块向两边展开跳动
      if(pressedRate>2000){
        pushMatrix();
        if(i<10){
          wave[i].spreadLeft();
        }else{
          wave[i].spreadRight();
        }
        popMatrix();
      }
    }
    //鼠标松开，思考
    if(press==false&&release==true){
      pushMatrix();
      wave[i].thinking();
      popMatrix();
    }
  }
}
//鼠标单击
void mousePressed(){
  press = true;
  release=false;
  for(int i=0;i<20;i++){
    //实例化
    if(i<10){
      wave[i]=new Wave(10*i);
    }else{
      wave[i]=new Wave(10*(i-10));
    }
    
  } 
}
//鼠标释放
void mouseReleased(){
  release=true;
  press=false;
  for(int i = 0;i<20;i++){
    wave[i]=new Wave(10*i);
  }
}
//泡泡类
class Bubble{
  float translateX;
  float translateY;
  float translateZ;
  //构造函数
  Bubble(float translateXtemp,float translateYtemp,float translateZtemp){
    translateX=translateXtemp;
    translateY=translateYtemp;
    translateZ=translateZtemp;
  }
  void display(){
    noFill();
    ellipse(0, 0, 50, 50);
  }
  //待机状态，冒泡
  void bubbling(){
    translateZ++;
    if(translateZ>400){
      translateZ=0;
    }
    if(translateZ<=100){
      stroke(255,255,255,translateZ);
    }
    if(translateZ>300&&translateZ<=400){
      stroke(255,255,255,400-translateZ);
    }
    if(translateZ>100&&translateZ<=300){
      stroke(255,255,255,100);
    }
    translate(translateX, translateY,translateZ);   
    display();
  }
  //监听状态，泡泡聚拢  
  void gather(){
    if(translateZ>0){
      translateZ-=4;
    }
    if(translateX<width/2){
      translateX+=4;
    }else{
      translateX-=4;
    }
    if(translateY<height/2){
      translateY+=4;
    }else{
      translateY-=4;
    }
    translate(translateX, translateY,translateZ); 
    stroke(255,255,255,map(translateZ,0,400,0,100)); 
    display(); 
  }
}
//波形类
class Wave{
  float translateX;//到中心的距离
  float waveHeight;//声波高度，随机数据
  float offsetX;//和中心的偏移量
  float delay;//延迟
  //构造函数
  Wave(float translateXtemp){
    translateX=translateXtemp;
  }
  //方块停顿一秒 
  void display(){
    fill(255);
    noStroke();
    translate(width/2,height/2);
    rectMode(CENTER);
    rect(0,0,20,20);
  }
  //方块向左展开
  void spreadLeft(){  
    translate(width/2-offsetX+10,height/2);
    spread();
  }
  //方块向右展开
  void spreadRight(){
    translate(width/2+offsetX-10,height/2);
    spread();
  }
  void spread(){
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(0,0,6,6);
    if(offsetX<=translateX){
      offsetX+=10;
    }
    //声波起伏
    if(pressedRate>3000){
      waveHeight=random(40,100);
      rect(0,0,6,waveHeight);
    }
  }
  //思考
  void thinking(){
    releaseRate++;
    //设置延迟时间和起始位置
    delay=translateX*26+releaseRate+500;
    translate(width/2+translateX-100,height/2);
    fill(255);
    noStroke();
    rectMode(CENTER);
    //动画循环
    if(delay%5000<500){
      waveHeight++;
    }if(delay%5000>=500&&delay%5000<1000){
      waveHeight--;
    }if(delay%5000>=1000&&delay%5000<5000){
      waveHeight=6;
    }
    if(waveHeight<6){
      waveHeight=6;
    }
    rect(0,0,6,waveHeight);
  }
}

