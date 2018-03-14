float diameter = 10;

void setup()
{
  size(200, 200);
  noSmooth();
}

float tel_pixels()
{
  loadPixels();
  float aantal = 0;
  for (int i = 0; i != width*height; ++i) 
  {
    if (pixels[i] == color(0,0,0)) 
    {
      aantal = aantal + 1;
    }
  }
  return aantal;
}
void draw()
{
  background(255);
  fill(255,255,255);
  ellipse(width / 2, height / 2, diameter, diameter);  
  if (keyPressed) {
    if (key == 'd') {
      diameter = diameter + 1;
    }
    if (key == 'a') {
      diameter = diameter - 1;
    }
  }
  fill(0,0,0);
  text(tel_pixels(), 20, 40);
  text(diameter, 20, 20);
}