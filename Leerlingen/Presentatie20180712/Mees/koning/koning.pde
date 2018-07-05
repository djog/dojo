float x = 200;
float y = 200;
float z = 200;
float c = 200;
PImage plaatje;
PImage king;
float king_x = x;
float king_y = y;
void setup()
{
  fullScreen() ;
  plaatje = loadImage("lol.jpg");
  king = loadImage("dood.png");
}
void draw()
{
  background(255, 255, 255);
 ellipse(z, c,20, 20);
  image(plaatje, x, y, 70, 70);
 image(king,z,c,70,70); //semmeju
  if (keyPressed)
  {
    if (key == 'd') 
    {
      x = x + 8;
    }
    if (key == 'a') 
    {
         x = x - 8;
    }
    if (key == 'w') 
    {
         y = y - 8;
    }
   if (key == 's') 
    {
         y = y + 8;
   }
   if (key == 'j') 
    {
         z = z + 8;
   }
   if (key == 'g') 
    {
         z = z - 8;
   }
   if (key == 'h') 
    {
         c = c + 8; 
  }
   if (key == 'y') 
    {
         c = c - 8;
   }
   if (key == ' ') 
    {
         king_x = king_x + 8;
   }
 }
}