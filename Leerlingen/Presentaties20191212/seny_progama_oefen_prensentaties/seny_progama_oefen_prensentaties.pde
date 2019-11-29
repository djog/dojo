void setup()
{
  size(777, 777);
}

void draw()
{
  stroke(777, 10, 10);
  ellipse(mouseY, mouseX, mouseY, mouseX);
  stroke(10, 777, 777);
  ellipse(mouseX, mouseY, mouseX, mouseY);
  stroke(0, 0, 0);
  ellipse(mouseY, mouseY, mouseY, mouseY);
  stroke(777, 777, 777);
  ellipse(mouseX, mouseX, mouseX, mouseX);
}
