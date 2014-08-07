import processing.pdf.*;

size(600,600);
beginRecord(PDF,"line.pdf");
background(255);
stroke(0,20);
strokeWeight(20);
line(200,0,400,height);
endRecord();