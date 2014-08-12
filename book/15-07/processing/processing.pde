int s=6;
background(0);
stroke(255,60);
randomSeed(s);
for(int i=0;i<100;i++){
	float r=random(10);
	strokeWeight(r);
	float offset=r*5;
	line(i-20,100,i+offset,0);
}