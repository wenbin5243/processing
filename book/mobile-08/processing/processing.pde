import processing.phone.*;
Phone p;

void setup(){
	p=new Phone(this);
	noLoop();
}

void keyPressed(){
	switch(key){
		case '1':
			p.vibrate(200);
			break;
		case '2':
			p.flash(200);
			break;
		case '3':
			p.call("411");
			break;
		case '4':
			p.launch("http://mobile.processing.org");
			break;
	}
}