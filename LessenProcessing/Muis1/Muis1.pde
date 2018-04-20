float x = 0;

void setup()
{
  size(300, 200);
  x = width / 2;
}

void draw() 
{
  rect(width / 4, height / 4, width / 2, height / 2);
  x = mouseX;
  if (x < width / 4) x = width / 4;
  ellipse(x, mouseY, 50, 50);
}