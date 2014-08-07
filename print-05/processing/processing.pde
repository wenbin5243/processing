PGraphics big;
void setup(){
	big=createGraphics(3000,3000,JAVA2D);
	big.beginDraw();
	big.background(128);
	big.line(20,1800,1800,900);
	big.endDraw();
	big.save("big.tif");
}
