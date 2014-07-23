String[] lines=loadStrings("position.txt");

for(int i=0;i<lines.length;i++){
  String[] pieces=split(lines[i],'\t');
  if(pieces.length==2){
    int x=int(pieces[0]);
    int y=int(pieces[1]);
    point(x,y);
  }
}
