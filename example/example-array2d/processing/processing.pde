float[][] distances;
float maxDistance;
int spacer;

void setup(){
	size(640,360);
	maxDistance=dist(width/2,height/2,width,height);
	distances=new float[width][height];
	for(int y=0;y<height;y++){
		for(int x=0;x<width;x++){
			float distance=dist(width/2,height/2,x,y);
			distances[x][y]=distance/maxDistance*255;
		}
	}
	spacer=10;
	noLoop();
}

void draw(){
	background(0);
	noStroke();
	for(int y=0;y<height;y+=spacer){
		for(int x=0;x<width;x+=spacer){
			stroke(distances[x][y]);
			point(x+spacer/2,y+spacer/2);
		}
	}
}