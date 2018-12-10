float hoek = 1.5707963268; //de helft van PI
float kogel_x = width / 2;
float kogel_y = height / 2;
float kogel_dx = 0;
float kogel_dy = 0;

void setup()
{
  //fullScreen();
  size(700, 450);
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x1 = width / 2;
  final float y1 = height;
  final float x2 = x1 + (cos(hoek) * 100);
  final float y2 = y1 - (sin(hoek) * 100);
  line(x1, y1,  x2, y2);
  ellipse(x1, y1, 100, 100);
  ellipse(kogel_x, kogel_y, 10, 10);
  
  kogel_x = kogel_x + kogel_dx;
  kogel_y = kogel_y + kogel_dy;
  
  if (keyPressed)
  { 
    if (key == 'a') 
    { 
      kogel_x = x2;
      kogel_y = y2;
      kogel_dx = cos(hoek) * 10;
      kogel_dy = -sin(hoek) * 10;
    }
    
    if (keyCode == LEFT) hoek += 0.01;
    if (keyCode == RIGHT) hoek -= 0.01;
    }
    if (hoek < 0.7853981634) hoek =  0.7853981634; // een kwart PI
    if (hoek > 2.35619449019) hoek = 2.35619449019;// een driekwart pi
  }
  
