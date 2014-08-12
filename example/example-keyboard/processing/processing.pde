int rectWidth;

void setup(){
	size(640,360);
	noStroke();
	background(0);
	rectWidth=width/4;
}

void draw(){
	
}

void keyPressed(){
	int keyIndex=-1;
	if(key>='A'&&key<='Z'){
		keyIndex=key-'A';
	}else if(key>='a'&&key<='z'){
		keyIndex=key-'a';
	}
	if(keyIndex==-1){
		background(0);
	}else{
		fill(millis()%255);
		float x=map(keyIndex,0,25,0,width-rectWidth);
		rect(x,0,rectWidth,height);
	}
}