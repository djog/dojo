String[] data;
String tmp;
float y = 305;
float x = 60;
PImage mb;
boolean s = false;
boolean d = false;
boolean r = false;
boolean l = false;
boolean le = false;
boolean lep = false;
boolean menu = true;
PImage gp;
PImage groot;
PImage lp;
PImage pu;
float xgp = 0;
float ygp = 325;
float xlp = 1300;
float ylp = 350;
int levens = 7;
float xr = 700;
float xr1 = 1200;
float xr2 = 100;
float xr3 = 950;
int score = 0;
int highscore = 0;
void setup()
{
  size(960, 600);
  data = new String[1];
  randomSeed( hour() + second() + millis());
  xgp = random(1000, 1500);
  mb = loadImage("mb.gif");
  mb.resize(125, 130);  
  gp = loadImage("gp.gif");
  gp.resize(120, 100);
  lp = loadImage("lp.gif");
  lp.resize(100, 80);
  pu = loadImage("lp.gif");
  pu.resize(100, 80);
  groot = loadImage("groot.gif");
  groot.resize(960, 600);
  data = loadStrings("highscore.txt");
  highscore = Integer.parseInt(data[0]);
}
void draw()
{
  if (menu == false)
  {
    background(200, 100, 50);
    fill(255, 100, 0);
    ellipse(xr3, 75, 50, 50);
    fill(100, 100, 100);
    rect(xr, 140, 120, 900); 
    rect(xr1, 140, 100, 400); 
    fill(100, 100, 255);
    rect(xr + 25, 160, 20, 35);
    rect(xr + 75, 160, 20, 35);
    rect(xr + 25, 220, 20, 35);
    rect(xr + 75, 220, 20, 35);
    rect(xr + 25, 285, 20, 35);
    rect(xr + 75, 285, 20, 35);
    rect(xr + 25, 350, 20, 35);
    rect(xr + 75, 350, 20, 35);  
    rect(xr1 + 15, 160, 20, 35);
    rect(xr1 + 65, 160, 20, 35);
    rect(xr1 + 15, 220, 20, 35);
    rect(xr1 + 65, 220, 20, 35);
    rect(xr1 + 15, 285, 20, 35);
    rect(xr1 + 65, 285, 20, 35);
    rect(xr1 + 15, 350, 20, 35);
    rect(xr1 + 65, 350, 20, 35);  
    //boom
    if (levens > 0)
    {
      xr2 = xr2 - 3;
      fill(30, 20, 20);
      rect(xr2, 320, 20, 100);
      fill(30, 250, 20);
      ellipse(xr2 + 10, 300, 50, 50);
      if ( xr2 < -30)
      {
        xr2 = random(970, 1600);
      }
    }
    fill(100, 120, 90);
    rect(0, 420, 960, 180);
    fill(40, 35, 200);
    fill(0, 0, 0);
    textSize(32);
    text("levens: " +levens, 20, 40);
    if (x > xgp && x < xgp + 120 && y > 280 && y < 600)
    {
      if (le == false) {
        levens = levens - 1;
      }
      le = true;
    } else {
      if (le == true) {
      }
      le = false;
    }
    if (x > xlp && x < xlp + 100 && y > ylp && y < ylp + 80)
    {
      if (lep == false) {
        levens = levens - 1;
      }
      lep = true;
    } else {
      if (lep == true) {
      }
      lep = false;
    }
    if (levens <= 0)
    {
      image(groot, 0, 0);
      xgp = 1400;
      xlp = 1400;
      x = 1200;
      xr = 1280;
      xr1 = 1300;
    }
    if (levens <= 0 && score > highscore)
    {
      highscore = score;
      data[0] = "" + highscore;
      saveStrings("highscore.txt", data);
      println( "heb bestand weggeschreven" );
    }
    text("highscore: "+ highscore, 690, 40);
    if (y < 305)
    {
      y = y + 4;
    }
    if (y > 305)
    {
      y = y - 0.5;
    }
    if (xgp < 0)
    {
      score = score + 1;
    }
    if (xlp < 0)
    {
      score = score + 1;
    }
    textSize(32);
    text("score: " + score, 200, 40);
    image(mb, x, y);
    //politieauto
    if (xgp < 0)
    {
      xgp = random(970, 2400);
      println("auto: "+ xgp);
    }
    //helikopter
    if (xlp < 0)
    {
      xlp = random(970, 1600);
      ylp = random(200, 350);
      println("heli x: "+ xlp);
      println("heli y: "+ ylp);
    }
    //gebouw 1
    if (xr < -10)
    {
      xr = random(970, 2400);
      println("gebouw 1: "+ xr);
    }
    //zon
    xr3 = xr3 - 0.25;
    if (xr3 < -50)
    {
      xr3 = 1000;
    }
    if (levens == 0)
    {
      xr3 = 2000;
    }
    //gebouw 2
    if (xr1 < -150)
    {
      xr1 = random(970, 2400);
      println("gebouw 2: "+ xr1);
    }
    image(gp, xgp, ygp);
    xgp = xgp - 4;
    image(lp, xlp, ylp);
    xlp = xlp - 3.4;
    if (r == true)
    {
      x = x + 3;
      r = false;
    }
    if (l == true)
    {
      x = x - 3;
      l = false;
    }
    xr = xr - 2.5;
    if (xr < -150)
    {
      xr = 1000;
    }
    xr1 = xr1 - 2.5;
    if (xr1 < -250)
    {
      xr1 = 1000;
    }
  }
  if (menu == true)
  {
    background(200, 40, 25);
    textSize(20);
    fill(20, 30, 200);
    text("Bewegen doe je door de pijltjes te gebruiken.", 275, 100);
    text("Druk op Z om te starten, O om weg te gaan als je doodt bent.", 200, 300);
    text("Haal zo veel mogeljk punten door de politie te ontwijken, veel plezier!", 150, 500);
  }
}
void keyPressed()
{
  if (key == ' ')
  {
    s = true;
  }
  if (keyCode == UP && y >= 305)
  {
    y = y -180;
  } 
  if (key == ' ')
  {
    d = true;
  }
  if (keyCode == DOWN && y <= 305)
  {
    y = y + 100;
  }
  if (keyCode == RIGHT && x <= 305)
  {
    if (y < 305)
    {
      x = x + 100;
    } else
    {
      x = x + 9;
    }
  }
  if (keyCode == LEFT && x >= 50)
  {
    if (y < 305)
    {
      x = x - 100;
    } else
    {
      x = x - 9;
    }
  }
  if (keyCode == 'O' && levens == 0)
  {
    exit();
  }
  if (keyCode == 'Z' && menu == true)
  {
    menu = false;
  }
  if (keyCode == 'X' && menu == false && levens > 0)
  {
    levens = 7;
  }
}
void keyReleased()
{
  if (keyCode == RIGHT)
  {
    r = true;
  }
  if (keyCode == LEFT)
  {
    l = true;
  }
}