//leuk spel.
//als hij het niet doet, klik dan 1 keer.
//bom werkt alleen op de grond en op het gras.
//pijltje naar links is naar links.
//pijltje naar rechts is naar rechts.
//pijltje naar beneden is bukken (voor de draak).
//pijltje naar boven is springen (je kan vliegen, net als flappybird).
//prober bij sinterklaas op zijn hoed te springen, dan gaat hij doodt en gaat het spel vrder.
//gommibommi is een kogel die vijanden verplaatst buiten het scherm.M
//Maar als je hem niet op een andere plek nog een keer af schiet, blijven ze 5 minuten weg.
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer muziek;
PImage don;
PImage c;
PImage b;
PImage a;
PImage d;
PImage e;
PImage f;
PImage h;
PImage z;
PImage w;
PImage qw;
PImage k;
PImage gras;
PImage plank;
PImage ds;
PImage ts;
PImage es;
PImage B2;
PImage vb;
boolean r = false;
boolean l = false;
boolean s = false;
boolean goed = false;
boolean[] mijnRij = { false, false, false, false, false, false, false, false, false, false, false, false};
float ispauze; 
float isgeenpauze = 1;
float levens = 3;
float golemlevens = 5;
float gommibommi;
float x = 60; 
float y = 580;
float xb = 1400; 
float yb = 650;
float xv = 1800; 
float yv = 630;
float xa = 2400;
float ya = 630;
float xe = 2000;
float ye = 575;
float xf = 700;
float yf = -100;
float xh = 1400;
float yh = 480;
float xz = 1550;
float yz = 300;
float xw = -50;
float yw = 300;
float xqw = 1500;
float xB2 = 1500;
float yB2 = -350;
float yvb;
float kx = x;
float ky = y + 50;
int score = 0;
void setup() {
  size(1400, 750);
  textSize(32);
  don = loadImage("don.png");
  don.resize(65, 80);
  c = loadImage("c.gif");
  c.resize(40, 40);
  b = loadImage("b.png");
  b.resize(50, 50);
  a = loadImage("a.png");
  a.resize(50, 50);
  e = loadImage("e.png");
  e.resize(40, 40);
  f = loadImage("f.png");
  f.resize(60, 60);
  h = loadImage("h.gif");
  h.resize(35, 35);
  z = loadImage("z.png");
  z.resize(50, 50);
  w = loadImage("w.gif");
  w.resize(50, 50);
  qw = loadImage("qw.gif");
  qw.resize(150, 150);
  gras = loadImage("gras.png");
  gras.resize(450, 80);
  plank = loadImage("plank.png");
  plank.resize(200, 80);
  k = loadImage("k.png");
  k.resize(20, 20);
  ds = loadImage("ds.gif");
  ds.resize(60, 20);
  ts = loadImage("ts.png");
  ts.resize(40, 20);
  es = loadImage("es.png");
  es.resize(20, 20);
  B2 = loadImage("B2.png");
  B2.resize(350, 350);
  vb = loadImage("vb.png");
  vb.resize(50, 100);
  minim = new Minim(this);
  muziek = minim.loadFile("Wie is de Mol_ Muziek Medley.mp3", 2048);
  muziek.loop();
}
void tekenMonsters()
{
  image(c, xb, yb);
  image(b, xv, yv);
  if (score > 15)
  {
    image(a, xa, ya);
  }
  if (score > 35)
  {
    image(e, xe, ye);
  }
  image(h, xh, yh);
  image(z, xz, yz);
  image(w, xw, yw);
  if (score > 500)
  {
    image(qw, xqw, 350);
  }
  if (score >= 1500)
  {
    if (golemlevens > 0)
      image(B2, xB2, yB2);
    image(vb, xB2 + 125, yvb);
  }
  image(f, xf, yf);
}
void draw() {
  background(0, 0, 255);
  image(gras, 575, 500);
  image(plank, 300, 350);
  fill(100, 200, 150);
  tekenMonsters();
  image(don, x, y); 
  line(0, 675, 1400, 675);
  fill(0, 233, 69);
  rect(0, 675, 1400, 75);
  fill(21, 74, 40);
  rect(0, 0, 1400, 150);
  fill(255, 255, 255);
  text("p = weg", 200, 50);
  text("o = opnieuw", 200, 100);
  text("i = pauze", 500, 50);
  text("score: " + score, 1000, 50);
  textSize(32);
  text("u = play", 500, 100);
  text("y = Gommibommi", 800, 100);
  if (score >= 1500 && score <= 1519 && score >= 1799 && xB2 > 500)
  {
    textSize(150);  
    text("LEVEL 2", 450, 250);
  }
  if (ispauze == 1)
  {
    text("pauze, maar je kan bewegen", 600, 400);
  }
  if (goed == true)
  {
    textSize(150);
    text("Goedzo", 450, 350);
    textSize(32);
    text("10.000 bonuspunten", 400, 450);
  }
  //levens
  if (levens == 3)
    image(ds, 850, 30);
  if (levens == 2)
    image(ts, 850, 30);
  if (levens == 1)
    image(es, 850, 30);
  if (x > 200)
  {
    stroke(255, 80, 90);
    line(199, 0, 199, 675);  
    line(1201, 0, 1201, 675);
  }
  if (levens <= 0)
  {
    textSize(100);
    text("GAME OVER", 400, 400);
    textSize(32);
    text("Druk op P voor weg en O voor opnieuw", 550, 550);
    xb = 1400;
    xv = 1400;
    xa = 1400;
    xe = 1400;
    yf = -1400;
    xh = 1400;
    xw = -300;
    xz = 1400;
    xB2 = 1400;
    xqw = 1400;
  }
  if (golemlevens <= 0)
  {
    xB2 = 1800;
    yvb = 1000;
  }
  if (score > 1505)
  {
    yB2 = 350;
  }
  //level 2
  if (score > 1500)
  {
    yb = 100;
    yv = 100;
    ya = 100;
    ye = 100;
    yf = 100;
    yh = 100;
    yw = 100;
    yz = 100;
    xqw = 100;
  }
  //level 3
  if (golemlevens <= 0 && score < 10000)
  {
    xB2 = 1800;
    yvb = 1000;
    textSize(150); 
    text("LEVEL 3", 450, 250);
    textSize(32);
    text("Wat was eerder, de perfecte kip, of het ei?", 450, 450);
    text("De kip, druk s", 850, 650);
    text("Het ei, druk a", 450, 650);
  }
  if (x <= 199)
  {
    x = x + 20;
  }
  if (x >= 1201)
  {
    x = x - 20;
  }
  if (r && x < 1300)
  {
    x = x + 6;
  }
  if (l && x > 10)
  {
    x = x -6;
  } 
  if (y < 600)
  {
    y = y + 5.5;
  }
  if (isgeenpauze == 1)
  {
    ispauze = 0;
    xb = xb -2;
    xv = xv -3;
    xa = xa -7;
    xe = xe -5;
    yf = yf +6;
    xh = xh -4;
    xw = xw +6;
    xz = xz -6;
  }
  if (ispauze == 1)
  {
    isgeenpauze = 0;
    xb = 0;
    xv = 0;
    xa = 0;
    xe = 0;
    yf = 0;
    xh = 1400;
    xw = 1400;
    xz = 0;
    xqw = -100;
    xB2 = 0;
  }
  if (score > 500 && xqw < 1600)
  {
    xqw = xqw -8;
  }
  if (xqw < 1400 && xqw > -100)
  {
    xb = 0;
    xv = 0;
    xa = 0;
    xe = 0;
    yf = 0;
    xh = 1400;
    xw = 1400;
    xz = 0;
  }
  if (gommibommi == 1)
  {
    kx = kx + 4;
    image(k, kx, ky);
  }
  if (kx > 1500)
  {
    gommibommi = 0;
  }
  if (kx > xb && kx < xb + 40 && ky > yb && ky < yb + 50)
  {
    xb = 3500;
  }
  if (kx > xv && kx < xv + 40 && ky > yv && ky < yv + 50)
  {
    xv = 3500;
  }
  if (kx > xa && kx < xa + 40 && ky > ya && ky < ya + 50)
  {
    xa = 3500;
  }
  if (kx > xe && kx < xe + 40 && ky > ye && ky < ye + 40)
  {
    xe = 3500;
  }
  if (kx > xf && kx < xf + 60 && ky > yf && ky < yf + 60)
  {
    yf = -3500;
  }
  if (kx > xh && kx < xh + 35 && ky > yh && ky < yh + 35)
  {
    xh = 3500;
  }
  if (kx > xz && kx < xz + 40 && ky > yz && ky < yz + 40)
  {
    xz = 3500;
  }
  if (kx > xw && kx < xw + 40 && ky > yw && ky < yw + 40)
  {
    xw = -4900;
  }
  if (kx > xB2 && kx < xB2 + 350 && ky > yB2 && ky < yB2 + 350)
  {
    if (!mijnRij[11])
      golemlevens = golemlevens - 1;
    mijnRij[11] = true;
  } else {
    mijnRij[11] = false;
  }  
  //vijand c
  if (xb < x + 40 && xb > x && y > 560)
  {
    mijnRij[0] = true;
  } else 
  {
    if (mijnRij[0] == true) 
    {
      levens = levens -1;
    }
    mijnRij[0] = false;
  }
  if (xb < 0)
  {
    xb = xb + 1400;
    score = score + 1;
  }
  //vijand b
  if (xv < x + 50 && xv > x && y > 560)
  {
    mijnRij[1] = true;
  } else
  {
    if (mijnRij[1] == true)
    {
      levens = levens -1;
    }
    mijnRij[1] = false;
  }
  if (xv < 0)
  {
    xv = xv + 1500;
    score = score + 1;
  }
  //vijand a
  if (xa < x + 50 && xa > x && y > 560 && score > 10)
  {
    mijnRij[2] = true;
  } else
  {
    if (mijnRij[2] == true)
    {
      levens = levens -1;
    }
    mijnRij[2] = false;
  }
  if (xa < 0 && score > 10)
  {
    xa = xa + 2500;
    score = score + 1;
  }
  //vijand e
  if (xe < x + 65 && xe > x && y > 540 && y < 620 && score > 10)
  {
    mijnRij[3] = true;
  } else
  {
    if (mijnRij[3] == true)
    {
      levens = levens -1;
    }
    mijnRij[3] = false;
  }
  if (xe < 0 && score > 25)
  {
    xe = xe + 1400;
    score = score + 1;
  }
  //vijand f
  if (x < 750 && x > 650 && yf < 600 && yf > 500 && y < 600 && y > 500)
  {
    mijnRij[4] = true;
  } else
  {
    if (mijnRij[4] == true)
    {
      levens = levens -1;
    }
    mijnRij[4] = false;
  }
  if (yf > 750)
  {
    yf = yf - 750;
    score = score + 1;
  }
  //vijand h
  if (xh < x + 65 && xh > x && y > 490 && y < 585)
  {
    mijnRij[5] = true;
  } else
  {
    if (mijnRij[5] == true)
    {
      levens = levens -1;
    }
    mijnRij[5] = false;
  }
  if (xh < 0)
  {
    xh = xh + 1500;
    score = score + 1;
  }
  //vijand w
  if (xw < x + 65 && xw > x && y > 300 && y < 400)
  {
    mijnRij[6] = true;
  } else
  {
    if (mijnRij[6] == true)
    {
      levens = levens -1;
    }
    mijnRij[6] = false;
  }
  if (xw > 1400)
  {
    xw = xw+ - 1450;
    score = score + 2;
  }
  if ( x > 575 && x < 1025 && y < 600 && y > 500)
  {
    y = 500;
  }
  if ( x > 300 && x < 500 && y < 400 && y > 300)
  {
    y = 300;
  }
  //vijand z
  if (xz < x + 65 && xz > x && y > 250 && y < 350)
  {
    mijnRij[7] = true;
  } else
  {
    if (mijnRij[7] == true)
    {
      levens = levens -1;
    }
    mijnRij[7] = false;
  }
  if (xz < -400)
  {
    xz = 1450;
    score = score + 2;
  }
  if ( x > 575 && x < 1025 && y < 600 && y > 500)
  {
    y = 500;
  }
  if ( x > 300 && x < 500 && y < 400 && y > 300)
  {
    y = 300;
  } 
  //vijand qw 1baas
  if (xqw > x - 50 && xqw < x + 100 && y < 400 && y > 325)
  {
    mijnRij[8] = true;
  } else
  {
    if (mijnRij[8] == true)
    {
      levens = levens -1;
    }
    mijnRij[8] = false;
  }
  if (xqw < -200)
  {
    xqw = 1500;
    score = score + 1;
  }
  if (x < xqw + 140 && x > xqw + 30 && y < 300 && y > 225)
  {
    xqw = xqw -0;
    xqw = 1800;
  }
  //vijand B2 (level 2)
  if (score >= 1500) 
  {
    xB2 = xB2 -2;
  }
  if (x < xB2 + 300 && x > xB2 + 50 && y > 300 && y < 750)
  {
    mijnRij[9] = true;
  } else
  {
    if (mijnRij[9] == true)
    {
      levens = levens -1;
    }
    mijnRij[9] = false;
  }
  if (xB2 < -300)
  {
    xB2 = 1500;
    score = score + 20;
  }
  //vijand B2 vuurballen (level 2)
  yvb = yvb -3;
  if (x < xB2 + 175 && x > xB2 + 125 && y > yvb - 100 && y < yvb)
  {
    mijnRij[10] = true;
  } else
  {
    if (mijnRij[10] == true)
    {
      levens = levens -1;
    }
    mijnRij[10] = false;
  }
  if (yvb < 0)
  {
    yvb = 450;
  }
}
void keyPressed() {
  if (key == ' ')
  {
    s = true;
  }
  if (keyCode == RIGHT)
  {
    r = true;
  }
  if (keyCode == LEFT)
  {
    l = true;
  }
  if (keyCode == UP && y >= 225)
  {
    y = y -150;
  }
  if (keyCode == DOWN && y >= 580)
  {
    y = y + 50;
  }
  if (keyCode == 'Y')
  {
    gommibommi = 1;
    ky = y + 50;
    kx = x;
  }
  //spelopties
  if (keyCode == 'P')
  {
    exit();
  }
  if (keyCode == 'O' && score < 1500)
  {
    x = 60; 
    y = 580;
    xb = 1400; 
    xv = 1800; 
    xa = 2400;
    xe = 2000;
    yf = -100;
    xh = 1400;
    xz = 1550;
    xw = -50;
    xqw = 1500;
    xB2 = 1500;
    score = 0;
    levens = 3;
  }   
  if (keyCode == 'O' && score > 1500)
  {
    xB2 = 1500;
    score = 1500;
    x = 60;
    levens = 3;
  }   
  textSize(32);
  if (keyCode == 'I')
  {
    ispauze = 1;
    isgeenpauze = 0;
  }
  if (keyCode == 'U')
  {
    ispauze = 0;
    isgeenpauze = 1;
  }
  //cheats     
  if (keyCode == 'T')
  {
    levens = 3;
  }
  if (keyCode == 'Z')
  {
    xa = 2780;
  }
  if (keyCode == 'X')
  {
    xe = 2000;
  }
  if (keyCode == 'C')
  {
    score = score + 100;
  }
  if (keyCode == 'V')
  {
    score = score + 1000;
  }
  if (keyCode == 'B')
  {
    y = y - 350;
  }
  if (keyCode == 'N')
  {
    x = x - 250;
  }    
  if (keyCode == 'M')
  {
    x = x + 250;
  }
  if (keyCode == 'S')
  {
    levens = 0;
  }    
  if (keyCode == 'A')
  {
    goed = true;
    score = score + 10000;
  } else
  {
    goed = false;
  }
}
void keyReleased()
{
  if (keyCode == RIGHT)
  {
    r = false;
  }
  if (keyCode == LEFT)
  {
    l = false;
  }
}