ArrayList<Ball>balls;

void setup(){
	size(200,200);
	balls=new ArrayList<Ball>();
	balls.add(new Ball(width/2,0,48));
}

void draw(){
	background(255);
	for(int i=balls.size()-1;i>=0;i--){
		Ball ball=balls.get(i);
		ball.move();
		ball.display();
		if(ball.finished()){
			balls.remove(i);
		}
	}
}

void mousePressed(){
	balls.add(new Ball(mouseX,mouseY,ballWidth));
}