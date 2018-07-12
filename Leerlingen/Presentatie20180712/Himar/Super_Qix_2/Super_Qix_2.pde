float x = 0;
float y = 0;

// 0: omhoog
// 1:naar rechts
// 2:omlaag
// 3: naar links
int richting = 1;
int life = 3;
//0: geen cheat mode
//1: wel cheatmode
int cheatmode = 0;
void setup(){


//f = hacks
  size(300, 300);
  x = 0;
  y = 188;
  strokeWeight(3);
}
//;;
void draw()
{
  if (keyPressed)
  { 
    if (key ==  'f') cheatmode = 1; //<>//
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
  }
  {
    if (richting == 0) y = y - 1;
    if (richting == 1) x = x + 1;
    if (richting == 2) y = y + 1;  
    if (richting == 3) x = x - 1;
    if (x > width) 
    {
      x = 0;
      life = life + 1;
      background(256,255,256);
    }
    if (y < 0) y = height;
    if (x < 0) x = width;
    if (y > height) y = 0;
    //background(266,265,266);
    point(x, y);
    stroke(random(256), random(255), random(125));
    line(0,175,600,175);
    line(0,200,300,200);
    
    if (cheatmode == 0)
    {
      y = y + random(-1, 1);
    }
    
    //Als je de bovenselijn raakt ...
    if(y < 175) 
    {
      life--;
      x = 0;
      y = 188;
      richting = 1;
      background(266,265,266);
    }
    //Als je de onderste lijn raakt ...
    if(y > 200) 
    {
      life--;
      x = 0;
      y = 188;
      richting = 1;
      background(266,265,266);
    }
    fill(255, 255, 255);
    rect(50, 80, 100, 20);
    text("life:", 50, 100);
    fill(0, 0, 0);
    text(life, 100, 100);
    if(life == 0){
      text("GAME OVER", 100, 200);
      stop();
    }
    if(life >= 10)
    {
    stroke(0,0,0);
    text("You Won!",100,200);
    stop();
    }
   
 }
}