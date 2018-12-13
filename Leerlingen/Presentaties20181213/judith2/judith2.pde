float x = 0;
float rood = 50;
float blauw = 50;

void setup()
{
  size(600, 400);
}

void draw()
{
  stroke(random(255), random(33), random(99));
  fill(random(12),random(255),256);
  ellipse(x + 50, width / 2 - 55, 200, 99);
  text("color", 300, 100);
  text("heel leuk.", 300, 25);
  text("eind op dracht.", 225, 50);
  text("super.", 355, 40);
  x = x + 1;
  rood = blauw + 9;
  if (x > height + 550)
  {
    x = 0;
  }
  if (rood > 255)
  {
    rood = blauw;
  }
}