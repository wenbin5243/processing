import processing.pdf.*;

boolean saveOneFrame = false;

void setup(){
	size(600,600);
}

void draw(){
	if(saveOneFrame==true){
		beginRecord(PDF,"line-###.pdf");
	}
	background(255);
	stroke(0,20);
	strokeWeight(20);
	line(mouseX,0,width-mouseX,height);
	if(saveOneFrame==true){
		endRecord();
		saveOneFrame=false;
	}
}

void mousePressed(){
	saveOneFrame=true;
}