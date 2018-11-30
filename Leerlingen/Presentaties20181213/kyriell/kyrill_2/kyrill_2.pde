float x = 0;
float y = 0;
void setup()
{
  size(200,200);
  x = width / 2;
  y = height / 2;
}
void draw()
{
  if (keyPressed)
  {
    if (key == 'w') y = y - 1;
    if (key == 'd') x = x + 1;
    if (key == 's') y = y + 1;
    if (key == 'a') x = x - 1;
  }
  if(x > width) x = 0;
  if(x < 0) x = 200;
  if(y > height) y = 0;
  if(y < 0) y = 200;
  point(x,y);
}