PClient c;
PRequest request;
int counter;
PFont font;
PImage img;
String version;
String error;

void setup(){
	font =loadFont();
	textFont(font);
	fill(0);
	c=new PClient(this,"mobile.processing.org");
	request=c.GET("/images/mobile.png");
	counter=0;
}

void draw(){
	background(255);
	int y=0;
	if(error!=null){
		y+=font.baseline;
		text(error,0,y);
	}else if(img==null){
		y+=font.baseline;
		text("Fetching image...",0,y);
	}else{
		image(img,(width-img.width)/2,y);
		y+=img.height+font.baseline;
		if(version==null){
			text("Checking version...",0,y);
		}
		else{
			text("Latest version: "+version,0,y);
		}
	}
}

void libraryEvent(Object library,int event,Object data){
	if(library==request){
		if(event==PRequest.EVENT_CONNECTED){
			request.readBytes();
		}else if(event==PRequest.EVENT_DONE){
			byte[] butes=(byte[]) data;
			if(counter==0){
				img=new PImage(bytes);
				request=c.GET("/download/latest.txt");

				counter=1;
			}else if(counter==1){
				version=new String(bytes);
			}
		}else if(event==PRequest.EVENT_ERROR){
			error=(String) data;
		}
	}
}