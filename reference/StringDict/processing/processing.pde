StringDict inventory;

void setup(){
	size(200,200);
	inventory=new StringDict();
	inventory.set("coffee","black");
	inventory.set("flour","white");
	inventory.set("tea","green");
	println(inventory);
	noLoop();
	fill(0);
	textAlign(CENTER);
}

void draw(){
	String s=inventory.get("tea");
	text(s,width/2,height/2);
}