import processing.sound.*;
int[] notes={60,62,64,65,67,69,71,72,74};

void setup(){
	noLoop();
}

void keyPressed(){
	if((key>='1')&&(key<='9')){
		Sound.playTone(notes[key-'1'],500,80);
	}
}