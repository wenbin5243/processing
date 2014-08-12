boolean b = false;

size(640,360);
background(0);
stroke(255);

int d=20;
int middle=width/2;

for(int i=d;i<=width;i+=d){
	if(i<middle){
		b=true;
	}else{
		b=false;
	}
	if(b==true){
		line(i,d,i,height-d);
	}

	if(b==false){
		line(middle,i-middle+d,width-d,i-middle+d);
	}
}