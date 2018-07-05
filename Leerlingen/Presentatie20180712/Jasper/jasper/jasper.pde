float e = 0;
void setup()
{
  fullScreen();
}
void draw()
{
   background(0);
   fill(255,0,0);
  if(keyPressed)
  {
 text ("het toetsenbord werkt niet",width /2 ,height /2);

}
if(mousePressed)
{
  text("de muis werkt niet",width /2 ,height /2);
  e += 1;
}
if(e > 9)
{
  text("error",random(0,width),random(0,height));
}
}