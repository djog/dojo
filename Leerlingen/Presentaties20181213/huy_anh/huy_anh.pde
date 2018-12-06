

void setup()
{
  size(100,100);
  background(0,0,0);
}

void draw()
{
  background(0,0,0);
  int s = second();
  int m = minute();
  int h = hour();
  text(h,15,50);
  text(":",40,50);
  text(m,50,50);
  text(":",70,50);
  text(s,80,50);
}
