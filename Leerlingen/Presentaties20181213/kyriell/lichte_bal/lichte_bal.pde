float licht_richting_x = 1;

void setup()
{
  size(300,200, P3D);
  noStroke();
}
void draw()
{
  background(255);
  directionalLight(255,255,255, licht_richting_x, 0, 0);
  translate(width / 2, height / 2, 0);
  sphere(50);
  if(keyPressed)
  {
    if(key == 'w') licht_richting_x = licht_richting_x + 1;
    if(key == 's') licht_richting_x = licht_richting_x - 1;
  }
}