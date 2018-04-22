# Flappy Birds

:construction: Deze les is nog niet af

```c++
float x = 0;
float y = 0;
float snelheid_omlaag = 1;

void setup()
{
  size(300, 200);
  x = width / 2;
  y = height / 4;
}

void draw()
{
  background(255, 255, 255);
  ellipse(x, y, 20, 20);
  y = y + snelheid_omlaag;
  snelheid_omlaag = snelheid_omlaag + 0.1;
  if (y > height + 10)
  {
    y = 10;
    snelheid_omlaag = 0;
  }
  if (keyPressed)
  {
    if (key == ' ') {
      snelheid_omlaag = -2;
    }
  }
}
```
