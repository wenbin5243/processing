PrintWriter output;

void setup(){
  size(100,100);
  output=createWriter("position.txt");
  frameRate(12);
}
void draw(){
  if(mousePressed){
    point(mouseX,mouseY);
    output.println(mouseX+"\t"+mouseY);
  }
}

void keyPressed(){
  output.flush();
  output.close();
  exit();
}