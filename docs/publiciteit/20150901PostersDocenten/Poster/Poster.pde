PImage logo = loadImage("djoglogo.png");
size(1000,1414);
background(255);
rectMode(CENTER);
int w = width/50;
noStroke();
for(int i=w/2; i!=width+w/2; i+=w){
  for(int o=0; o<height; o+=w){
    pushMatrix();
    translate(i,o);
    rotate(random(TWO_PI));
    fill(random(255));
    rect(0,0,w,w);
    popMatrix();
  }
}

//Text
fill(0,255*.75);
rect(width/2,height/2,width*.75,height*.75);
fill(255);
PFont head = createFont("Source Code Pro",32*2);
PFont font = createFont("Source Code Pro",16*2);
PFont bold = createFont("Source Code Pro Bold",26*2);
textFont(head);
textAlign(LEFT,TOP);
String[] text = loadStrings("file.txt");
text(text[0],width/8,height/8);
text("Dojo",width/8,height/8+32*2);
textFont(bold);
text(text[1],width/8,height/8+(3*32)*2);
text(text[3],width/8,height/8+(4*32+26+16)*2);
text(text[6],width/8,height/8+(5*32+2*26+3*16)*2);
text(text[9],width/8,height/8+(6*32+3*26+5*16)*2);
textFont(font);
text(text[2],width/8,height/8+(3*32+26)*2);
text(text[4],width/8,height/8+(4*32+2*26+16)*2);
text(text[5],width/8,height/8+(4*32+2*26+2*16)*2);
text(text[7],width/8,height/8+(5*32+3*26+3*16)*2);
text(text[8],width/8,height/8+(5*32+3*26+4*16)*2);
text(text[10],width/8,height/8+(6*32+4*26+5*16)*2);
textAlign(RIGHT,BOTTOM);
text(text[11],width*7/8,height*7/8);
image(logo,width-472,height-76);
save("poster.jpg");
exit();