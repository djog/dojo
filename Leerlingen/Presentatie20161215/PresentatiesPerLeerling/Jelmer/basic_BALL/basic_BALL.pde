float y = 300;
float x = 300;
float v = 0;
float richting = 0;
boolean sprint = false;
float sprintv = 2;


void setup()
{
  size(900,900);
}

void draw()
{
  background(41);
  ellipse(x,y,100,100);
  rect(0,350,900,100);
 
  if ( y > 300)
  {
    y = 300;
  }
  if (sprint == true)
  {
    sprintv = 5;
  }
    
  
  if(richting == 1)
  {
  
    if ( y == 300)
    {
      v = 20;
    }
    v = v - 1;
    y = y - v;
  
    if(v < -18)
  {
   v = 0; 
    richting = 0;
  }
  }
  if(richting == 2)
{
 
if( y < 299)
    {
    x = x + sprintv;
    y = y - v;
    v = v - 1;
    }
  if ( y == 300)
  {
   x = x + sprintv;
  }
    
    

}
  if(richting == 3)
  {
    if( y < 299)
    {
    x = x - sprintv;
    y = y - v;
    v = v - 1;
    }
    if ( y == 300)
    {
      x = x - sprintv;
    }
    
    else
    x = x - sprintv;
    
 
  }
 
 if(y > 300)
  {
   
    richting = 0;
  }  

    

  
 if (keyPressed)
 {
   if(key == 'w')
   richting = 1;
 }
 {
   if(key == 'd')
   richting = 2;
 }
  if(key== 'a')
  {
    richting = 3;
  }
  if(key=='e')
  {
  sprintv = 5;
  }
  if (key=='r')
  {
    sprintv = 2;
  }
  if (key=='s')
  {
    richting = 0;
  }



  

}
  
  