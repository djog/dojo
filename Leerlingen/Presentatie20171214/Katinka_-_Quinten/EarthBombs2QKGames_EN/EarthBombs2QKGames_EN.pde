float xvankomeet1;
float xvankomeet2;
float xvankomeet3;
float xvankomeet4;
float xvankomeet5;
float xvanaarde;
float yvanaarde;
float yvankomeet1;
float yvankomeet2;
float yvankomeet3;
float yvankomeet4;
float yvankomeet5;
float levens = 5;
float punten = 0;
PImage achtergrond;
PImage aarde;
PImage komeet1;
PImage komeet2;
PImage komeet3;
PImage komeet4;
PImage komeet5;

void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == RIGHT)
    {
      xvanaarde = xvanaarde + 13;
    }
    if(keyCode == LEFT)
    {
      xvanaarde = xvanaarde - 13;
    }
    if(keyCode == DOWN)
    {
      exit();
    }
  }
}

void setup()
{
  size(800,600);
  aarde = loadImage("globeee.jpg");
  komeet1 = loadImage("komeet1.png");
  komeet2 = loadImage("komeet2.png");
  komeet3 = loadImage("komeet3.png");
  komeet4 = loadImage("komeet4.png");
  komeet5 = loadImage("komeet5.png");
  frameRate(100);
  xvankomeet1=random(800);
  xvankomeet2=random(800);
  xvankomeet3=random(800);
  xvankomeet4=random(800);
  xvankomeet5=random(800);  
  yvankomeet1=0;
  yvankomeet2=0;
  yvankomeet3=0;
  yvankomeet4=0;
  yvankomeet5=0;
  xvanaarde=0;
  yvanaarde=470;
}

void draw()
{
  achtergrond = loadImage("space2.jpg");
  background(achtergrond);
  image(aarde, xvanaarde, yvanaarde);
  yvankomeet1 = yvankomeet1 + 4;
  yvankomeet2 = yvankomeet2 + 4;
  yvankomeet3 = yvankomeet3 + 4;
  yvankomeet4 = yvankomeet4 + 4;
  yvankomeet5 = yvankomeet5 + 4;
  image(komeet1, xvankomeet1, yvankomeet1);
  image(komeet2, xvankomeet2, yvankomeet2);
  image(komeet3, xvankomeet3, yvankomeet3);
  image(komeet4, xvankomeet4, yvankomeet4);
  image(komeet5, xvankomeet5, yvankomeet5);
  text("Lifes:", 10, 20);
  text(levens, 55, 20);
  text("Points:", 10, 40);
  text(punten, 55, 40);
  text("Press DOWN to exit.", 670, 20);
  text("Press LEFT/RIGHT to move.", 628, 40);
  if(yvankomeet1 > 472)
  {
    yvankomeet1=0;
    xvankomeet1=random(800);
    punten = punten + 1;
  } 
  if(yvankomeet2 > 472)
  {
    yvankomeet2=0;
    xvankomeet2=random(800);
    punten = punten + 1;
  }
  if(yvankomeet3 > 472)
  {
    yvankomeet3=0;
    xvankomeet3=random(800);
    punten = punten + 1;
  }
  if(yvankomeet4 > 472)
  {
    yvankomeet4=0;
    xvankomeet4=random(800);
    punten = punten + 1;
  }
  if(yvankomeet5 > 472)
  {
    yvankomeet5=0;
    xvankomeet5=random(800);  
    punten = punten + 1;
  }
  if(xvankomeet1 > xvanaarde && xvankomeet1 < (xvanaarde+128) && (yvankomeet1+128) > yvanaarde && (yvankomeet1+128) < (yvanaarde+128))
  {
    yvankomeet1 = 0;
    yvankomeet2 = 0;
    yvankomeet3 = 0;
    yvankomeet4 = 0;
    yvankomeet5 = 0;
    xvankomeet1 = random(800);
    xvankomeet2 = random(800);
    xvankomeet3 = random(800);
    xvankomeet4 = random(800);
    xvankomeet5 = random(800);
    levens = levens - 1;
    punten = punten - 20;
  }
if(xvankomeet2 > xvanaarde && xvankomeet2 < (xvanaarde+128) && (yvankomeet2+128) > yvanaarde && (yvankomeet2+128) < (yvanaarde+128))
  {
    yvankomeet1 = 0;
    yvankomeet2 = 0;
    yvankomeet3 = 0;
    yvankomeet4 = 0;
    yvankomeet5 = 0;
    xvankomeet1 = random(800);
    xvankomeet2 = random(800);
    xvankomeet3 = random(800);
    xvankomeet4 = random(800);
    xvankomeet5 = random(800);
    levens = levens - 1;
    punten = punten - 20;
  }
if(xvankomeet3 > xvanaarde && xvankomeet3 < (xvanaarde+128) && (yvankomeet3+128) > yvanaarde && (yvankomeet3+128) < (yvanaarde+128))
  {
    yvankomeet1 = 0;
    yvankomeet2 = 0;
    yvankomeet3 = 0;
    yvankomeet4 = 0;
    yvankomeet5 = 0;
    xvankomeet1 = random(800);
    xvankomeet2 = random(800);
    xvankomeet3 = random(800);
    xvankomeet4 = random(800);
    xvankomeet5 = random(800);
    levens = levens - 1;
    punten = punten - 20;
  }
if(xvankomeet4 > xvanaarde && xvankomeet4 < (xvanaarde+128) && (yvankomeet4+128) > yvanaarde && (yvankomeet4+128) < (yvanaarde+128))
  {
    yvankomeet1 = 0;
    yvankomeet2 = 0;
    yvankomeet3 = 0;
    yvankomeet4 = 0;
    yvankomeet5 = 0;
    xvankomeet1 = random(800);
    xvankomeet2 = random(800);
    xvankomeet3 = random(800);
    xvankomeet4 = random(800);
    xvankomeet5 = random(800);
    levens = levens - 1;
    punten = punten - 20;
  }
if(xvankomeet5 > xvanaarde && xvankomeet5 < (xvanaarde+128) && (yvankomeet5+128) > yvanaarde && (yvankomeet5+128) < (yvanaarde+128))
  {
    yvankomeet1 = 0;
    yvankomeet2 = 0;
    yvankomeet3 = 0;
    yvankomeet4 = 0;
    yvankomeet5 = 0;
    xvankomeet1 = random(800);
    xvankomeet2 = random(800);
    xvankomeet3 = random(800);
    xvankomeet4 = random(800);
    xvankomeet5 = random(800);
    levens = levens - 1;
    punten = punten - 20;
  }
  if(xvanaarde < 1)
  {
    xvanaarde = 0;
  }
  if((xvanaarde+128) > 799)
  {
    xvanaarde = 672;
  }
  if(levens < 1)
  {
    stop();
    text("GAME OVER", 350, 280);
  }
}