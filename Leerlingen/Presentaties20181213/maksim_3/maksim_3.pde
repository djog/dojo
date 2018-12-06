void setup ()
{
 fullScreen();
}

void draw()
{
  fill(mouseX, mouseY, mouseX + mouseY);
  ellipse(mouseX, mouseY, 0, 0);
  fill(mouseX, mouseX, 255);
  ellipse(mouseY, mouseX, 0, 50);
} 
