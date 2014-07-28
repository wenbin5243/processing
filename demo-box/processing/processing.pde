int currentFrame=0;
void setup(){
	size(640,360,P3D);
}
void draw(){
	currentFrame=currentFrame+1;
	background(0);
	lights();
	pushMatrix();
	translate(width/2, height/2, 0);
	rotateY(PI/180*currentFrame);
	rotateX(-0.4);
	noStroke();
	box(100);
	popMatrix();
}
	