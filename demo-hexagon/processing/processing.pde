float deg;
int delay=0;
Hexagon[][] hexagon=new Hexagon[12][9];

void setup(){
  size(800,600);
  smooth();
  frameRate(33);//帧率，一帧0.33秒
  translate(width/2, height/2);
}
void draw(){
  background(255);
  for(int i=0;i<11;i++){
    for(int j=0;j<9;j++){

      if(j%2==0){
        hexagon[i][j]=new Hexagon(40,40*2*i,40*1.732*j,deg);
      }else{
        hexagon[i][j]=new Hexagon(40,40*2*i-40,40*1.732*j,deg);
      }
      hexagon[i][j].display();

    }
  }
  if(frameCount<=50){
    deg=PI/6/50*frameCount;
  }
  if((frameCount>50)&&(frameCount<=60)){
    deg=PI/6;
  }
  if((frameCount>60)&&(frameCount<=110)){
    deg=PI/6+PI/6/50*(frameCount-60);
  }
  if((frameCount>110)&&(frameCount<=120)){
    deg=PI/3;
  }
  if(frameCount>120){
    frameCount=0;
  }
}
  

class Hexagon{
  float borderWidth;
  float translateX;
  float translateY;
  float deg;
  //构造函数
  Hexagon(float tempBorderWidth,tempTranslateX,tempTranslateY,tempDeg){
    borderWidth=tempBorderWidth;
    translateX=tempTranslateX;
    translateY=tempTranslateY;
    deg=tempDeg;
  }
  void display(){
    fill(#3d9970);
    noStroke();
    pushMatrix();
    beginShape();
    vertex(-borderWidth/2,-borderWidth/2*1.732);
    vertex(borderWidth/2,-borderWidth/2*1.732);
    vertex(borderWidth,0);
    vertex(borderWidth/2,borderWidth/2*1.732);
    vertex(-borderWidth/2,borderWidth/2*1.732);
    vertex(-borderWidth,0);
    translate(translateX,translateY);
    rotate(deg);
    endShape();
    popMatrix();
  }
}