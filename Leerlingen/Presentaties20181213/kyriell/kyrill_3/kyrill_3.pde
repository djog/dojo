float x = 0;
float y = 0;
float dx = 0; //snelheid naar rechts
float dy = 0; //snelheid naar onder
void setup()
{
  size(200,200);
  x = width/2;
  y = height/2;
}
void draw()
{
  if (keyPressed)
  {
    if (key == 'w') dy = dy - 0.01;
    if (key == 'd') dx = dx + 0.01;
    if (key == 's') dy = dy + 0.01;
    if (key == 'a') dx = dx - 0.01;
  }
  if(x < 0) x = width;
  if(x > width) x = 0;
  if(y > height) y = 0;
  if(y < 0) y = height;
  x = x + dx;
  y = y + dy;
  point(x,y);
}