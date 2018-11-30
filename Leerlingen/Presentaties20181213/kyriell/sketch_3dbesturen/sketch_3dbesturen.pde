float x1 = 0;
float x2 = 0;
float y1 = 0;
float y2 = 0;
float z1 = 0;
float z2 = 0;
void setup()
{
  size(300,200,P3D);
  noStroke();
  x1 = width * 1 / 4;
  x2 = width * 3 / 4;
  y1 = height / 2;
  y2 = height / 2;
  z1 = height / 4;
  z2 = height / 4;
}
void draw()
{
  background(196);
  lights();
  translate(x1, y1, z1);
  box(20);
  translate(-x1,-y1, -z1);
  
  translate(x2,y2, z2);
  sphere(20);
  translate(-x2,-y2, -z2);

  if(keyPressed)
  {
    if(key == 'w') y1 = y1 - 1;
    if(key == 's') y1 = y1 + 1;
    if(key == 'w') y2 = y2 + 1;
    if(key == 's') y2 = y2 - 1;
    if(key == 'i') z2 = z2 + 1;
    if(key == 'k') z2 = z2 - 1;
    if(key == 'i') z1 = z1 - 1;
    if(key == 'k') z1 = z1 + 1;
  }
}