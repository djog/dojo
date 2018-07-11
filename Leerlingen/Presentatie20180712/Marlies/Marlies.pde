void setup()
{
  size(900, 200);
}

void draw()
{
  strokeWeight(200);
  point(random (width), height / 2);
  stroke(random(256), random(255), random(255));
}
