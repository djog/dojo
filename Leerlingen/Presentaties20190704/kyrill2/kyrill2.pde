float x = 250;
float y = 250;
float xend = 255;
float yend = 255;
float xm = 0;
float ym = 0;
void setup(){
  size(500,500);
  background(255);
}
void draw(){
  background(255);
  x += xm;
  y += ym;
  fill(xend, yend, xend);
  ellipse(x,y,50,50);
  if(mouseX > x) xm = 1;
  if(mouseX < x) xm = -1;
  if(mouseY > y) ym = 1;
  if(mouseY < y) ym = -1;
}
