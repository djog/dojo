
float x = 0;
float y = 0;

float r = 0;
float t = 0;
float yu = 0;

float f = 0;
float g = 0;
float h = 0;

// 0: omhoog
// 1: naar rechts
// 2: omlaag
// 3: naar links
// 4: stoppen
int richting = 1;

void setup()
{
  size(500 ,500);
  x = width / 2;
  y = height / 2;
}

void draw()
{
  if (keyPressed)
  {
    if (key == 'w') richting = 0;
    if (key == 'd') richting = 1;
    if (key == 's') richting = 2;
    if (key == 'a') richting = 3;
    if (key == 'e') richting = 4;
    if (key == 'q') richting = 5;
    if (key == ' ') richting = 6;
   
    if (key == 'r') r = r + 10;
    if (key == 't') t = t + 10;
    if (key == 'y') yu = yu + 10; 
    
    if (key == 'f') r = r - 10;
    if (key == 'g') t = t - 10;
    if (key == 'h') yu = yu - 10;
  }
  if (richting == 0) y = y - 1;
  if (richting == 1) x = x + 1;
  if (richting == 2) y = y + 1;
  if (richting == 3) x = x - 1;
  if (richting == 4) x = x - 1;
  if (richting == 4) y = y + 1;
  if (richting == 5) x = x + 1;
  if (richting == 5) y = y - 1;
  if (richting == 6) x = x - 1;
  if (richting == 6) y = y + 1;
  if (richting == 6) x = x + 1;
  if (richting == 6) y = y - 1;
  
  if (y > width) y = 0;
  if (x < 0) x = height;
  
  if (x > width) x = 0;
  if (y < 0) y = height;
  point(x,y);

  if (t > 255){
    t=255;
 }
  if (r > 255){
    r=255;
 }
  if (yu > 255){
    yu=255;
 }
 
 
  if (t < 0){
    t=0;
  }
  if (r < 0){
    r=0;
  }
  if (yu < 0){
    yu=0;
  }   
   stroke(r,t,yu);
}
