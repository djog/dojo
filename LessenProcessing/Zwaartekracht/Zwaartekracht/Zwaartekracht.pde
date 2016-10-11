float x = 300;
float y = 50;
float dx = 1;
float dy = 0;
float g = 0.1;

void setup()
{
  size(600, 600);
}

void draw()
{
  ellipse(x,y,100,100);
  x = x + dx;
  y = y + dy;
  dy = dy + g;
  if (x > 550 || x < 50)
  {
    dx = -dx;
  }
  if (y > 550)
  {
    dy = -dy;
  }
}