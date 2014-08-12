String s;
PFont font;
void setup(){
	font=loadFont();
	textFont(font);
	softkey("Input");
	s="No input";
}

void draw(){
	background(200);
	text(s,0,height/2);
}

void softkeyPressed(String label){
	if(label.equals("Input")){
		s=textInput();
	}
}