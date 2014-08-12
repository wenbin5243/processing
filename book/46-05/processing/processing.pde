String[] lines;
int index=0;
void setup(){
	lines=loadStrings("position.txt");
	frameRate(12);
}

void draw(){
	if(index<lines.length){
		String[] pieces=split(lines[index],'\t');
		if(pieces.length==2){
			int x=int(pieces[0]);
			int y=int(pieces[1]);
			point(x,y);
		}
		index=index+1;
	}
}
