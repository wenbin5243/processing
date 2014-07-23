int[] x=new int[0];
int[] y=new int[0];
void setup(){
  size(100,100);
}
void draw(){
  background(204);
  stroke(0);
  noFill();
  beginShape();
  for(int i=0;i<x.length;i++){
    vertex(x[i],y[i]);
  }
  endShape();
  if(x.length>=1){
    stroke(255);
    line(mouseX,mouseY,x[x.length-1],y[x.length-1]);
  }
}

void mousePressed(){
  x=append(x,mouseX);
  y=append(y,mouseY);
}

void keyPressed(){
  String[] lines=new String[x.length];
  for(int i=0;i<x.length;i++){
    lines[i]=x[i]+"\t"+y[i];
  }
  saveStrings("lines.txt",lines);
  exit();
}