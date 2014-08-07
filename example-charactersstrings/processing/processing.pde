char letter;
String words="Begin...";
void setup(){
	size(640,360);
	textFont(createFont("Georgia",36));
}

void draw(){
	background(0);
	textSize(14);
	text("Click on the program,then tpe to add to the String",50,50);
	text("Current key:"+letter,50,70);
	text("The String is "+words.length()+"characters long",50,90);

	textSize(36);
	text(words,50,120,540,300);
}

void keyPressed(){
	if((key>='a'&&key<='z')||key==' '){
		letter=key;
		words=words+key;
		println(key);
	}
}