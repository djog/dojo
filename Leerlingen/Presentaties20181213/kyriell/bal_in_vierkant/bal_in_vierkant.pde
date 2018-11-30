void setup()
{
  size(300,200);
}
void draw()
{
  fill(255);
  if(mouseX > 25 && mouseX < 100 && mouseY > 50 && mouseY < 150)
  {
    fill(255,0,0);
  }
  rect(25,50,75,100);
}