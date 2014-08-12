int[] rules={0,0,0,1,1,1,1,0};
int gen =1;
color on=color(255);
color off=color(0);

void setup(){
  size(101,101);
  frameRate(8);
  background(0);
  set(width/2,0,on);
}

void draw(){
  for(int i=1;i<width-1;i++){
    int left=get(i-1,gen-1);
    int me=get(i,gen-1);
    int right=get(i+1,gen-1);
    if(rules(left,me,right)==1){
      set(i,gen,on);
    }
  }
  gen++;
  if(gen>height-1){
    noLoop();
  }
}

int rules(color a,color b,color c){
  if((a==on)&&(b==on)&&(c==on)){
    return rules[0];
  }
  if((a==on)&&(b==on)&&(c==off)){
    return rules[1];
  }
  if((a==on)&&(b==off)&&(c==on)){
    return rules[2];
  }
  if((a==on)&&(b==off)&&(c==off)){
    return rules[3];
  }
  if((a==off)&&(b==on)&&(c==on)){
    return rules[4];
  }
  if((a==off)&&(b==on)&&(c==off)){
    return rules[5];
  }
  if((a==off)&&(b==off)&&(c==on)){
    return rules[6];
  }
  if((a==off)&&(b==off)&&(c==off)){
    return rules[7];
  }
  return 0;
}
