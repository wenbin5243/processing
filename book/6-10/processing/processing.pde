for(int y=0;y<100;y+=10){
	for(int x=0;x<y;x+=10){
		line(x,y,x+6,y+6);
		line(x+6,y,x,y+6);
	}
}