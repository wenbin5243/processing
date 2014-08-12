import processing.net.*;

Server s;
Client c;
String input;
int data[];

void setup(){
	size(450,450);
	background(204);
	stroke(0);
	frameRate(5);
	s=new Server(this,12345);
}

void draw(){
	if(mousePressed==true){
		stroke(255);
		line(pmouseX,pmouseY,mouseX,mouseY);
		s.write(pmouseX+" "+pmouseY+" "+mouseX+" "+mouseY+"\n");
	}
	c=s.available();
	if(c!=null){
		input=c.readString();
		input=input.substring(0,input.indexOf("\n"));
		data=int(split(input,' '));
		stroke(0);
		line(data[0],data[1],data[2],data[3]);
	}
}
