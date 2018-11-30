float x = 0;
float y = 0;
// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
int richting = 1;
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
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  if(x > width) x = 0;
  if(x < 0) x = 200;
  if(y > height) y = 0;
  if(y < 0) y = 200;
  point(x,y);
}