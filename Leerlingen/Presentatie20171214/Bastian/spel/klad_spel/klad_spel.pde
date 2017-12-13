PImage gras;
void setup()
{
 size (1400, 750); 
  gras = loadImage("gras.png");
  gras.resize(150, 20);
}
void draw()
{
 image(gras, 675, 525);
}