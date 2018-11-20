float x = 45;

void setup()
{
  size(1200, 1000);
}

void draw()
{
  stroke(random(355), random(455), random(355));
  fill(random(655), random(755), random(655));
  rect(x, x, x, x);
  x = x + 4;
}
  
 