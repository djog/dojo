float menu = 1;
float x = 51;
float y = 51;
float xl = 0;
float rc = 0;

void setup()
{
  fullScreen();
  xl = x;
}

void draw()
{
  rc += 5;
  if (rc > 255) {
    rc = 0;
  }

  background(0);

  if (menu == 1) {
    fill(rc, 0, 0);
    text("HITBOX", 10, 85);
    textSize(25);
    text("Mouse on circle to play ->", 10, 400);
    ellipse(400, 400, 100, 100);
  }

  fill(0);
  stroke(rc, 0, 0);
  textSize(100);

  if (menu == 1)
  {
    if (mouseX> 350 && mouseX < 450  && mouseY > 350 && mouseX < 450)
    {
      menu = 0;
    }
  }

  if (menu == 0)
  {
    ellipse(x, y, 100, 100);
    line(0, height-50, width, height-50);
    if (y < height-100) {
      y +=20;
    }

    if (y > height-100) {
      y -=1;
    }

    if (keyPressed)
    {
      if (key == 'w') {
        y-=40;
      }

      if (key == 'a') {
        x-=2;
      }

      if (key == 'd') {
        x+=2;
      }
    }

    if (mousePressed)
    {
      {
      }
    }
  }
}
