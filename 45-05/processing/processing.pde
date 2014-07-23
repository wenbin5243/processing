PFont font;
String letters="";
PrintWriter output;
void setup(){
  size(100,100);
  output=createWriter("word.txt");
}
void draw(){
  background(204);
  text(letters,5,50);
}

void keyPressed(){
  if(key==' '){
    output.println(letters);
    letters="";
  }else{
    letters=letters+key;
  }
  if(key==ENTER){
    output.flush();
    output.close();
    exit();
  }
}
