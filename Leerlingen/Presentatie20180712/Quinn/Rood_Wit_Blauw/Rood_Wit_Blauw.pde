float x;
float y;
void setup()
{
  size(500, 400);
  frameRate(10000);
  background(0);
}

void draw()
{
  
  //BLAUW
  stroke(0,0,255);
  x = random(width);
  y = random((height /3) * 2,height);
  point(x,  y);
  
  //WIT
  stroke(255,255,255);
  x = random(width);
  y = random(height / 3,(height / 3) * 2);
  point(x,  y);
  
  //ROOD
  stroke(255,0,0);
  x = random(width);
  y = random(0,height/3);
  point(x,  y);
  
  //point( random(width), random(height - 60) + 20 );
  
}
