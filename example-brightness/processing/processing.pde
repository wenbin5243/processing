PImage img;

void setup(){
	size(640,360);
	frameRate(30);
	img=loadImage("../../img.jpg");
	img.loadPixels();
	loadPixels();
}

void draw(){
	for(int x=0;x<img.width;x++){
		for(int y=0;y<img.height;y++){
			int loc=x+y*img.width;
			float r,g,b;
			r=red(img.pixels[loc]);
			g=green(img.pixels[loc]);
			b=blue(img.pixels[loc]);

			float maxdist=50;
			float d=dist(x,y,mouseX,mouseY);
			float adjusbrightness=255*(maxdist-d)/maxdist;
			r+=adjusbrightness;
			g+=adjusbrightness;
			b+=adjusbrightness;

			r=constrain(r,0,255);
			g=constrain(g, 0, 255);
			b=constrain(b, 0, 255);
			color c=color(r,g,b);
			//color c=color(r);
			pixels[y*width+x]=c;
		}
	}
	updatePixels();
}