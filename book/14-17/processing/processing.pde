smooth();
float radius=0.15;
float cx=33;
float cy=66;
float px=cx;
float py=cy;
for(int deg=0;deg<360*5;deg+=12){
	float angle=radians(deg);
	float x=cx+(cos(angle)*radius);
	float y=cy+(sin(angle)*radius);
	line(px,py,x,y);
	radius=radius*1.05;
	px=x;
	py=y;
}