# Himar

Super Qix

```
float x = 0;
float y = 0;

// 0: omhoog
// 1:naar rechts
// 2:omlaag
// 3: naar links
int richting = 1;

void setup()
{
  size(300, 300);
  x = width / 2;
  y = height / 2;
  strokeWeight(3);
}
//;;
void draw()
{
  if (keyPressed)
  { 
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  {
    if (richting == 0) y = y - 1;
    if (richting == 1) x = x + 1;
    if (richting == 2) y = y + 1;  
    if (richting == 3) x = x - 1;
    if (x > width) x = 0;
    if (y < 0) y = height;
    if (x < 0) x = width;
    if (y > height) y = 0;
    point(x, y);
    stroke(random(256), random(255), random(255));
  }
}
```