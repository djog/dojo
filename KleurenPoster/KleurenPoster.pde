size(1000,1414);
background(128);
rectMode(CENTER);
int w = width/50;
noStroke();
for (int z = 0; z < 5; z++){
  for(int i=w/2; i!=width+w/2; i+=w){
    for(int o=0; o<height; o+=w){
      pushMatrix();
      translate(i,o);
      rotate(random(TWO_PI));
      fill(23*z+random(64),23*z+random(255),128+random(128), 192-sqrt(z)*64);
      scale(2.0-z*0.5);
      rect(0,0,w,w);
      popMatrix();
    }
  }
}
//Text
  fill(0,255*.75);
  rect(width/2,height/2,width*.75,height*.75);
  PFont head = createFont("Source Code Pro",32*2);
  PFont font = createFont("Source Code Pro",16*2);
  PFont bold = createFont("Source Code Pro Bold",26*2);
  int maxi = 10;
for (int i = 0; i < maxi; i++){
  float offset = i;
  if (i != maxi-1){fill(64+10*offset,255,32+offset, 16*i);}
   else fill(255, 255, 255, 192);

  textFont(head);
  textAlign(LEFT,TOP);
  String[] text = loadStrings("file.txt");

  float x = width/8 + i;
  text(text[0],x,height/8-offset);
  text("Dojo",x,height/8+32*2-offset);
  textFont(bold);
  text(text[1],x,height/8+(3*32)*2-offset);
  text(text[3],x,height/8+(4*32+26+16)*2-offset);
  text(text[6],x,height/8+(5*32+2*26+3*16)*2-offset);
  text(text[9],x,height/8+(6*32+3*26+5*16)*2-offset);
  textFont(font);
  text(text[2],x,height/8+(3*32+26)*2-offset);
  text(text[4],x,height/8+(4*32+2*26+16)*2-offset);
  text(text[5],x,height/8+(4*32+2*26+2*16)*2-offset);
  text(text[7],x,height/8+(5*32+3*26+3*16)*2-offset);
  text(text[8],x,height/8+(5*32+3*26+4*16)*2-offset);
  text(text[10],x,height/8+(6*32+4*26+5*16)*2-offset);
  textAlign(RIGHT,BOTTOM);
  text(text[11],width*7/8,height*7/8);
}
save("poster_kleur.jpg");