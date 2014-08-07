PFont font;
void setup(){
	font loadFont();
	textFont(font);
	softkey("Delete");
	multitap();
}

void draw(){
	background(200);
	text(multitapText,0,height/2);
}

void softkeyPressed(String label){
	if(label.equals("Delete")){
		multitapDeleteChar();
	}
}