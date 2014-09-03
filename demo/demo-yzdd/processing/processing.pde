float[] width=new float[6];
float[] left=new float[6];
float[] top=new float[6];
int offsetWidth;
int offsetHeight;
void setup() {
  size(320, 640);
   
  for(int i=0;i<6;i++){
    width[i]=random(30,55);
    left[i]=random(320);
    top[i]=random(640);
    
  } 
}
void draw() {
  smooth();
  background(#014db5);
  noFill();
  stroke(#ffffff);
  offsetWidth++;
  offsetHeight++;
  for(int i=0;i<6;i++){
    rotate(PI/3*i);
    translate(offsetWidth, offsetHeight);
    
    ellipse(left[i], top[i], width[i], width[i]);
  }
  if(offsetWidth==320){
    offsetWidth=0;
  }
  if(offsetHeight==640){
    offsetHeight=0;
  }
}
