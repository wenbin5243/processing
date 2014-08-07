int[] angles={30,10,45,35,60,38,75,67};

void setup(){
	size(640,360);
	noStroke();
	noLoop();
}

void draw(){
	background(100);
	pieChart(300,angles);
}

void pieChart(float diameter,int[] data){
	float lastAngle=0;
	for(int i=0;i<data.length;i++){
		float gray=map(i,0,data.length,0,255);
		fill(gray);
		arc(width/2,height/2,diameter,diameter,lastAngle,lastAngle+radians(angles[i]));
		lastAngle+=radians(angles[i]);
	}
}