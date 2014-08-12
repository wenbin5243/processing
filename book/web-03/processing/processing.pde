import processing.net.*;

Client c;
String input;
int data[];

void setup(){
	size(450,255);
	background(204);
	stroke(0);
	frameRate(5);
	c=new Client(this,"127.16.147.66",12345);
}

void draw(){
	if(mousePressed==true){
		stroke(255);
		line(pmouseX,pmouseY,mouseX,mouseY);
		c.write(pmouseX+" "+pmouseY+" "+mouseX+" "+mouseY+"\n");
	}
	if(c.available()>0){
		input=c.readString();
		input=input.substring(0,input.indexOf("\n"));
		data=int(split(input,' '));
		stroke(0);
		line(data[0],data[1],data[2],data[3]);
	}
}
