PImage plaatje;

void setup() 
{
  fullScreen();
  plaatje = loadImage("mario.png");
}

void draw() 
{
  background(255, 255, 255);
  image(plaatje, width / 2, height / 2);
}