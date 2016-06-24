int index = int(random(70, 30));
float a[] = new float [index];
float b[] = new float [index];
boolean animatie = false;

void setup()
{
  fullScreen();
  background(0, 0, 29);
  for (int i = 0; i < index; i++)
  {
    a[i] = random(width);
    a[i] = random(height);
  }
}

void draw()
{
  background(0, 0, 29);
  if (key == 'a' && keyPressed)
  {
    if (animatie == true)
    {
      animatie = false;
    } else if (animatie == false)
    {
      animatie = true;
    }
  }
  if (animatie == true)
  {
    if (millis()%1000 < 500)
    {
      fill(255, 67, random(110, 150), 150);
    } else
    {
      fill(random(180, 226), 255, 67, 150);
    }
  }

  if (animatie == false) {
    fill(random(180, 226), 255, 67, 150);

    if (key == 'p')
    {
      fill(255, 67, random(110, 150), 150);
    }
    if (key == 'o')
    {
      fill(255, random(120, 180), 67, 150);
    }
    if (key == 'y')
    {
      fill(250, 243, 23, 150);
    }
    if (key == 'r')
    {
      fill(250, 23, 23, 150);
    }

    if (key == 'b')
    {

      fill(23, 28, 250, 150);
    }

    if (key == 'v')
    {
      fill(random(200, 240), 23, 250, 150);
    }
  }
  for (int i = 0; i < index; i++)
  {

    if (mousePressed)
    {


      ellipse(a[i], b[i], 10, 10);
      if (a[i] < mouseX+50)
      {
        a[i] += random(1, 5);
      }

      if (a[i] > mouseX-50)
      {
        a[i] -= random(1, 5);
      }

      if (b[i] < mouseY+50)
      {
        b[i] += random(1, 5);
      }

      if (b[i] > mouseY-100)
      {
        b[i] -= random(1, 5);
      }
    }
  }
}