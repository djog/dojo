float richting = 2;
float x = 0;
float y = 700;
boolean gameOver = false;
PImage bg;
float ymax = 5;

void setup()
{
  size(800,800);
  background(0);
  textSize(50);
  bg = loadImage("meatball.png");
}

void draw()
{
  if (gameOver)
  {
    background(bg);
    text("that's a spicy meatball", 100, 100, 600);
    x=400;
    
    y=400;
    if (keyPressed) 
    {
      gameOver = false;
      background(0);
    }
  }
  
  ellipse(x, y , 7 , 7 );
  rect(0,700,800,100);
  
  if ( richting == 0)
  {
    y = y- 1;
  }
  if (richting == 1)
  {
    y = y + 1;
  }
  if (richting == 2)
  {
  x = x + 1;
  }
  if (richting == 3) 
  {
    x = x - 1;
  }
  if( richting == 5)
  {
    x = x + 1;
    y = y - 1;
  }
  
  if (keyPressed){
  {
    if(key =='w')
    richting = 0;
  }
  if (key == 's')
  {
    richting = 1;
  }
  if (key == 'd')
  {
    richting = 2;
  }
  if (key == 'a')
  {
    richting = 3;
  }
  
 
}
else
  richting = 4;


 if (x>800 || y > 800 || x<0 || y<0)
 {
   gameOver = true;
 }


}