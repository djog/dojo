float x1 = 150;
float y1 = 100;
float d1 = 180;
float r1 = d1 / 2;
float x2 = 30;
float y2 = 100;
float d2 = 60;
float r2 = d2 / 2;
void setup()
{
  size(300,200);
}
void draw()
{
  background(255);
  fill(255);
  if(dist(x1,y1, x2, y2) < r1 + r2)
  {
    fill(255,0,0);
  }
  ellipse(x1,y1,d1,d1);
  ellipse(x2,y2,d2,d2);
  x1 += random(-1,1);
  y1 += random(-1,1);
  x2 += random(-1,1);
  y2 += random(-1,1);
}