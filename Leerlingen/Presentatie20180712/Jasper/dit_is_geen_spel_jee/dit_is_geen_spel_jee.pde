float e = 0;
float e2 = 0;
void setup()
{
  fullScreen();
  textSize(32);
}
void draw()
{
  strokeWeight(random(100));
   background(0);
   fill(255,0,0);
   stroke(255,0,0);
  if(keyPressed)
  {
 text ("het toetsenbord werkt niet",width /2 ,height /2);
e2 += 1;
}
if(mousePressed)
{
  text("de muis werkt niet",width /2 ,height /2);
  e += 1;
}
if(e > 99)
{
  text("error",random(0,width),random(0,height));
}
if(e2 > 299)
{
  ellipse(random(0,width),random(0,height),100,100);
}
if(e > 399)
{
  rect(random(0,width),random(0,height),random(0,width),random(0,height));
}
if(e2 > 499)
{
  line(random(0,width),random(0,height),random(0,width),random(0,height));
}
if(e2 > 599)
{
  text("01101100 01101111 01101100 ",random(0,width),random(0,height));
}
}