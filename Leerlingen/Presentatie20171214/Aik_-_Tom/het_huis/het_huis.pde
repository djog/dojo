PImage smiley;

void setup(){
size(2000,1000);
smiley = loadImage("smiley.jpg");
}

void draw() {
background(3,228,225);
fill(11,175,23);
rect(0,970,2000,2000);
fill(175,67,12);
rect(800,569,400,400);
fill(0,0,0);
triangle(1000,400,800,569,1200,569);
fill(175,67,12);
rect(1150,370,50,200);
fill(165,111,25);
rect(100,610,100,1000);
fill(43,198,24);
ellipse(150,450,500,500);
rect(1900,610,100,1000);
fill(255,255,255);
rect(850,610,200,100);

if (mouseX > 850 && mouseX < 900 && mouseY > 610 && mouseY < 700) {
  image(smiley,0,0);
  smiley.resize(2000,1000);
  }
}