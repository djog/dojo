# Maksim

3D Eiland

```
float g = 1;

void setup()
{
  size(700, 12080, P3D);
  noStroke();
  textSize(100);
}

void draw()
{
  background( 9, 8, 660000 );
  translate(g, 100, 600 );
  lights();
  sphere(455);
  stroke(9, 8, 660  );
  ellipse(500, 50065, 1000, 100);
      text("hup", 100, 100); 
  if (keyPressed)
  {
    if (key == 'm')
    {
      text("hup", 100, 100); 
    }  
  }
}
```