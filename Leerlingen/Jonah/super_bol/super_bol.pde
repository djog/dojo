float bolX;
float bolY; 
float level = 1;
float bolGrootte = 50;
boolean is_game_over = false;

void setup  ()
{
  textSize(50);
  size(500,500);
}

void draw ()  
{
  if (level == 1)
  {
    
    background(0,255,0);
    ellipse(400,75,100,100);
    ellipse(300,400,50,50);
    ellipse(100,100,150,150);
  
    rect(0,200,500,60);
    fill(0,255,255);
    fill(255);
  }

  if (level == 2)
  {
    background(0,255,255);
    ellipse(300,75,100,100);
    ellipse(300,300,50,50);
    ellipse(100,100,250,150);
   
    rect(0,200,600,60);
    fill(0,0,255);
    
  }
  if(level == 3)
  {
    background(0,255,0);
    ellipse(100,200,50,100);
    ellipse(100,50,70,70);
    ellipse(200,300,100,100);
    ellipse(400,350,100,20);
    ellipse(300,200,50,75);
  }
  if(level == 4)
  { 
    background(0,200,50);
    stroke(0,200,0);
    rect(0,200,600,60);
  }
  if(level >= 5)
  {
    background(0,255,100);
    text("you win !!!!!!!!!!!!!!!!!",100,250);
  }
  
  fill(0,125,255);                                                             
  ellipse(bolX,bolY,bolGrootte,50);
  
  if(bolY -25 < 200)
  {
    is_game_over = true;
    fill(255,0,0);
  }
  else if(bolY+25 > 260)
  {
    is_game_over = true;
    fill(255,0,0);
  }
  else
  {
    is_game_over = false;
  } 
  if (is_game_over)
  {
    text("game_over",200,50);  
  }  
  
  if(keyPressed)
  {
    if(key == 'a')
    {
      bolX = bolX-2;
    }
    if(key == 'w')
    {
      bolY = bolY-2;
    }
    if(key == 'd')
    {
      bolX = bolX+2;
    }
    if(key == 's')
    {
      bolY = bolY+2;
    }
  }
  
  if(bolX>=500)
  {
    level=level+1;
    bolY = 225;
    bolX =0;  
  }
}