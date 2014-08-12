size(150,200,P3D);
background(153);

line(0,0,0,width,height,-100);
line(width,0,0,width,height,-100);
line(0,height,0,width,height,-100);

translate(width/2,height/2);
rotateX(PI/6);
rotateY(PI/6);
box(35);