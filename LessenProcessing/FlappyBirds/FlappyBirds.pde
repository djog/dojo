float x = 0;
float y = 0;
float snelheid_omlaag = 1;
float obstakel_x = 0;
float obstakel_y = 0;

void setup()
{
  size(300, 200);
  x = width / 4;
  y = height / 4;
  obstakel_x = width;
  obstakel_y = height / 2;
}

void draw()
{
  background(255, 255, 255);
  ellipse(x, y, 20, 20);
  rect(obstakel_x - 25, obstakel_y + 50, 50, height);
  rect(obstakel_x - 25, obstakel_y - 50, 50, -height);
  obstakel_x = obstakel_x - 2;
  y = y + snelheid_omlaag;
  snelheid_omlaag = snelheid_omlaag + 0.2;
  if (obstakel_x < -50)
  {
    obstakel_x = width + 50;
    obstakel_y = random(height);
  }
  if (y > height + 10)
  {
    y = 10;
    snelheid_omlaag = 0;
  }
  if (keyPressed)
  {
    if (key == ' ') {
      snelheid_omlaag = -2;
    }
  }
}