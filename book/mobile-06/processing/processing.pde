import processing.sound.*;
Sound s;

void setup(){
	s=new Sound("soundtrack.mid");
	softkey("Play");
	noLoop();
}

void softkeyPressed(String label){
	if(label.equals("Play")){
		s.play();
		softkey("Pause");
	}else if(label.equals("Pause")){
		s.pause();
		softkey("Play");
	}
}