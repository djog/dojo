float x = -50;
float y = -50;

void setup()
{
  size(900, 600);
}

void draw()
{
  stroke(random(256),188, 255);
  ellipse(x,y,100,100);
  x = x + 1;
  y = y + 1;
  if (x > width - 50)
{
  x = -50;
}
 if (y > height - 50)
 {
   y = -50;
 }
}
  