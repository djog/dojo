float hoek = 1.5707963268; // De helft van pi

void setup()
{
  size(300, 200);  
  strokeWeight(5);
}

void draw()
{
  background(255, 255, 255);
  final float x1 = width / 2;
  final float y1 = height;
  final float x2 = x1 + (cos(hoek) * 100);
  final float y2 = y1 - (sin(hoek) * 100);  
  line(x1, y1, x2, y2);
  ellipse(x1, y1, 100, 100);
  
  if (keyPressed)
  {
    if (keyCode == LEFT) hoek += 0.01;
    if (keyCode == RIGHT) hoek -= 0.01;
  }
  if (hoek < 0.7853981634) hoek = 0.7853981634; 
}