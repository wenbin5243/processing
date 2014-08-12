void setup(){
  size(600,300);
  noFill();
  smooth();
  strokeWeight(6);
  stroke(255);
  frameRate(33);//帧率，一帧0.33秒
}
void draw(){
  background(#2c3e50);
  translate(width/2, height/2);//平移画布到中间
  //rotate(PI/10*frameCount);//每帧旋转角度
  println(frameCount);//输出当前帧；
  //旋转
  if((frameCount>=10)&&(frameCount<30)){  
    rotate(PI/20*(frameCount-10));
  }
  if((frameCount>=30)&&(frameCount<53)){  
    rotate(PI);
  }
  //绘制曲线
  if((frameCount>=0)&&(frameCount<18)){  
    arc(0,0,70,70,-PI/2,-PI/2+frameCount*PI/17);
  }
  if((frameCount>=18)&&(frameCount<23)){  
    arc(0,0,70,70,-PI/2,-PI/2+PI);
  }
  if((frameCount>=23)&&(frameCount<43)){  
    arc(0,0,70,70,-PI/2+(frameCount-23)*PI/20,-PI/2+PI);
  }
  if((frameCount>=43)&&(frameCount<53)){  
    arc(0,0,70,70,PI/2-PI/72,PI/2);
  }
  //循环动画
  if(frameCount==53){
    frameCount=0;
  }
}