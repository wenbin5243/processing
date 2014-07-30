void setup(){
	size(100,100);
	smooth();
	noStroke();
	noLoop();
}

void draw(){
	leaf(26,83,60,1);
}

void leaf(int x,int y,int size,int dir){
	pushMatrix();
	translate(x,y);
	scale(size);
	beginShape();
	vertex(1.0*dir,-0.7);
	bezierVertex(1.0*dir, -0.7, 0.4*dir, -1.0, 0.0, 0.0);
	bezierVertex(0.0,0.0,1.0*dir,0.4,1.0*dir,-0.7);
	endShape();
	popMatrix();
}