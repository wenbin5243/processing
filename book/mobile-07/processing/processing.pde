import processing.sound.*;

PFont font=loadFont();
textFont(font);
background(255);
fill(0);
String[] types=Sound.supportedTypes();
int y=font.baseline;
for(int i=0,length=types.length;i<length;i++){
	text(types[i],0,y);
	y+=font.height;
}