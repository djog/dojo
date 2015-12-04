int x = 10;
int y = 10;

void setup() 
{
  size(1000,1000);
}

void draw()
{
  background(0,255,0);
  //Bovenkant bek
  rect(x +150,y +200,250,50);
  rect(x +450,y +600,50,90);
  rect(x +350,y  +150,50,50);
  rect(x +350,y  +250,50,50);
  rect(x +150,y  +300,250,50);
  rect(x +350,y  +350,50,50);
  rect(x +350,y  +400,200,200);
  line(x +550,y  +500,x +750,y  +400);
  line(x +550,y  +550,x  +750,y  +400);
  ellipse(x +375,y +175,30,20);
  ellipse(x + 375,y + 175,5,5);
  ellipse(x + 160,y  +215,10,10);
  triangle(x +150,y  +250,x +200,y +250,x +180,y +270); 
  triangle(x +150,y  +300,x +210,y +300,x +180,y +270);
  triangle(x +200,y  +300,x +240,y +300,x +220,y +270);
  triangle(x +240,y  +250,x +200,y +250,x +220,y +270);
  triangle(x  +240,y  +250,x +280,y +250,x +260,y +270);
  triangle(x  +240,y  +300,x +260,y +270,x +280,y +300);
  triangle(x  +240,y  +300,x  +260,y +270,x +280,y +300);
  
  if (keyCode == RIGHT) { x = x + 1; }
  if (keyCode == LEFT ) { x = x - 1; }
  if (keyCode == DOWN ) { y = y + 1; }
  if (keyCode == UP ) { y = y - 1; }
  
  //LEFt
  //UP
  //DOWN
  
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
 
}