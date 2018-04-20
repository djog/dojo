float x = 0;
float y = 0;

void setup()
{
  size(300, 200);
  x = width / 2;
  y = height / 2;
}

void draw() 
{
  fill(mouseX, 0, 0);
  rect(width / 4, height / 4, width / 2, height / 2);
  x = mouseX;
  y = mouseY;
  if (x < width * 1 / 4) x = width * 1 / 4;
  if (x > width * 3 / 4) x = width * 3 / 4;
  if (y < height * 1 / 4) y = width * 1 / 4;
  ellipse(x, y, 50, 50);
}