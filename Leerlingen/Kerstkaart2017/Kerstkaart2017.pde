Flower[] flowers = new Flower[2];
boolean richel_1_klaar = false;
boolean carmen_1_klaar = false;
boolean carmen_2_klaar = false;
boolean katinka_klaar = false;
boolean quinten_klaar = false;
PImage kerstkatals1;
PImage kerstbabyals2;
PImage slinger;
PImage rendier;
PImage mart_plaatje;

float r;
float g;
float b;
float a;

float diam;
float x;
float y;

//Bastian
PImage k;

//Quinten
PImage Qachtergrondkerstplaatje;
PImage Qkerstkrans;
PImage Qkersthond;

//Richel 2
float richel_x  = 100.0;
float richel_y  = 121.0;
float richel_dx = 0.9;
float richel_dy = 1.0;

//Jeroen
float circle_width=0;
float width_plus_thing=1;

void setup()
{
  size(800, 600);
  //Bastian
  k = loadImage("2.gif");
  k.resize(30, 80);

  //Katinka
  kerstkatals1 = loadImage("kerstkat.jpg");
  kerstbabyals2 = loadImage("kerstbaby.jpg");
  slinger = loadImage("kerstslinger.png");
  rendier = loadImage("rendier.png");

  //Jorik 2
  for (int i = 0 ; i < flowers.length;i++) {
    flowers[i] = new Flower();
  }

  //Mart
  mart_plaatje = loadImage("a.jpg");

  //Quinten
  Qachtergrondkerstplaatje = loadImage("kerst2.jpg");
  Qkerstkrans = loadImage("kerst9.png");
  Qkersthond = loadImage("kerst10.jpg");

}

void teken_bastian()
{
 int n_seconden = int(millis()) / 300;
  if (n_seconden %2 == 0)
  {
    fill(200, 10, 30);
  } else
  {
    fill(10, 200, 30);
  }
  rect(0, 0, 200, 200);
  fill(10, 20, 130);
  rect(0, 0, 75, 50);
  rect(60, 125, 75, 50);
  rect(125, 0, 75, 50);
  image(k, 85, 40);  
}

void teken_carmen_1() 
{
  if (carmen_1_klaar) return;
  carmen_1_klaar = true;
  
  //Mijn vierkantje
  fill(245, 187, 149);
  rect(400, 200, 200, 200);
 
  //Pak van kerstman
  fill(255, 0, 0);
  rect(400, 330, 200, 70);
 
  //Haar van kerstman
  fill(255, 255, 255);
  stroke(255, 255, 255);
  //Links
  ellipse(425, 285, 50, 50);
  ellipse(425, 305, 50, 50);
  ellipse(425, 325, 50, 50);
  ellipse(425, 345, 50, 50);
  //Links boven
  rect(400, 250, 20, 90);
  ellipse(425, 275, 50, 50);
  ellipse(435, 265, 50, 50);
  ellipse(445, 255, 50, 50);
  ellipse(455, 245, 50, 50);
  //Links onder
  ellipse(435, 335, 50, 50);
  ellipse(445, 345, 50, 50);
  //Rechts
  ellipse(575, 285, 50, 50);
  ellipse(575, 305, 50, 50);
  ellipse(575, 325, 50, 50);
  ellipse(575, 345, 50, 50);
  //Rechts boven
  rect(580, 250, 20, 90);
  ellipse(575, 275, 50, 50); 
  ellipse(565, 265, 50, 50);
  ellipse(555, 255, 50, 50);
  ellipse(545, 245, 50, 50);
  //Rechts onder
  ellipse(560, 345, 50, 50);
  ellipse(570, 335, 50, 50);
  //Midden boven
  ellipse(525, 245, 50, 50);
  ellipse(475, 245, 50, 50);
  ellipse(500, 245, 50, 50);
  //Midden onder
  ellipse(525, 345, 50, 50);
  ellipse(475, 345, 50, 50);
  ellipse(500, 345, 50, 50);
 
  //Baard van kerstman
  //Links
  ellipse(435, 360, 50, 50);
  ellipse(450, 365, 50, 50);
  ellipse(470, 370, 50, 50);
  //Rechts
  ellipse(500, 360, 50, 50);
  ellipse(500, 375, 50, 50);
  ellipse(525, 370, 50, 50);
  ellipse(545, 365, 50, 50);
  ellipse(565, 360, 50, 50);
 
  //Hoed van kerstman
  //Rood
  fill(255, 0, 0);
  stroke(0, 0, 0);
  rect(400, 200, 200, 35);
  //Wit
  fill(255, 255, 255);
  stroke(0, 0, 0);
  rect(400, 235, 200, 25);
 
  //Ogen van kerstman
  //Oogwit
  fill(255, 255, 255);
  ellipse(475, 297, 18, 25);
  ellipse(525, 297, 18, 25);
  //Pupillen
  fill(0, 0, 0);
  stroke(0, 0, 0);
  ellipse(475, 300, 10, 10);
  ellipse(525, 300, 10, 10);
 
  stroke(0, 0, 0);
  noFill();
  rect(400, 200, 200, 200);
}

void teken_carmen_2() 
{
  if (carmen_2_klaar) return;
  carmen_2_klaar = true;

  fill(125, 255, 0);
  rect(400, 0, 200, 200);
  image(rendier, 412, 20);
  image(slinger, 400, 0, 200, 60);
 
  noFill();
  rect(400, 0, 200, 200);  
}

void teken_jeroen() 
{
  float width_random=random(0.1,0.4);
  float opacity_random=random(0,20);
    circle_width+=width_plus_thing;
  if(circle_width>20)
  {
    width_plus_thing=-width_random;
  }
  if(circle_width<0)
  {
      width_plus_thing=width_random;
  }

  fill(50,120,150);
  rect(0,0,200,200);
  for(int i=0; i< 200; i=i+20)
  {
  line(i,0,i,200);
  line(0,i,200,i);
  }

  //fill(22);
  //tint(255, 127);  // Display at half opacity
  //
  fill(255,250,205,60+opacity_random);
  noStroke();
  ellipse(100, 100, 100+circle_width, 100+circle_width);
  fill(255,255,244,40);
  ellipse(100, 100, 138+circle_width*1.1, 138+circle_width*1.1);
  fill(255,255,244,20);
  ellipse(100, 100, 190+circle_width*1.2, 190+circle_width*1.2);
  
  
  fill(0);
  //tint(255,255);
  rect(20,100,15,100);
  rect(160,100,15,100);
  
  beginShape();
  vertex(12,100);
  vertex(16, 120);
  vertex(103,80);
  vertex(100,60);
  endShape();
  
  beginShape();
  vertex(200-12,100);
  vertex(200-16, 120);
  vertex(103,80);
  vertex(100,60);
  endShape();
  
  beginShape();
  vertex(35,200);
  vertex(50, 140);
  vertex(55,136);
  vertex(60,133);
  vertex(70,129);
  vertex(75,130);
  vertex(80,135);
  vertex(75, 148);
  vertex(70,152);
  vertex(76,170);
  vertex(74,171);
  vertex(72,170);
   vertex(78,200);
  //vertex(,105);
  endShape();
  
   beginShape();
  vertex(90,200);
  vertex(88, 190);
  vertex(85, 183);
  vertex(80,172);
  vertex(85,170);
  vertex(90,171);
  vertex(100,172);
  vertex(104,166);
  vertex(112,163);
  //vertex(115,168);
  vertex(117,169);
  vertex(118,172);
  
   vertex(90+40,172);
   vertex(88+40, 183);
   vertex(85+40, 190);
   vertex(83+40,200);
  
  
 

   vertex(150,200);
  //vertex(,105);
  endShape();
  
  
  
  beginShape();
  vertex(100,60);
  vertex(110,50);
  vertex(100,40);
  vertex(90,50);
  endShape();
}  

class Dot {
  float hue;

  float R = random(10, 100);
  float theta = random(TWO_PI);

  float x;
  float y;

  float goal_x = R * cos(theta);
  float goal_y = R * sin(theta);

  float easing_x = random(0.03, 0.07);
  float easing_y = random(0.03, 0.07);

  float sat = random(30,100);
  float brt = random(30,100);

  Dot(float tmpHue) {
    x = 0;
    y = 0;
    hue = tmpHue;
  }

  void move() {
    x += (goal_x - x) * easing_x;
    y += (goal_y - y) * easing_y;
  }

  void display(float alp) {
    stroke(hue, sat, brt, alp);
    point(x, y);
  }
}

class Flower {
  //int dot_val = (int)random(100, 200);
  int dot_val = (int)random(50, 100);

  Dot[] dots = new Dot[dot_val];

  float x = 100;
  float y = 500;
  float hue = random(360);

  float alp = random(10, 255);
  float alp_spd = random(3, 6);

  Flower() {
    for (int i = 0; i < dots.length;i++) {
      dots[i] = new Dot(hue);
    }
  }

  void display() {
    pushMatrix();
    translate(x, y);
    for (int i = 0; i < dots.length;i++) {
      dots[i].move();
      dots[i].display(alp);
    }
    
    alp -= alp_spd;
    
    if (alp < 0) {
      x = 100;
      y = 500;
      hue = random(360);

      for (int i = 0; i < dots.length;i++) {
        dots[i].x = 0;
        dots[i].y = 0;
      }
      alp = 255;
    }

    popMatrix();
  }
}
void teken_jorik_1()
{
  fill(254, 226, 0);
  rect(200,200,200,200);
 
  // body
  stroke(0);
  fill(250);
  ellipse(300,350,100,100);
  
  // head
  fill(250);
  ellipse(300,290,60,60);
   
  // eyes
  fill(0);
  ellipse(292,282,5,5);
  ellipse(308,282,5,5);
  
  // nose
  fill(255,200,0);
  ellipse(300,292,7,7);
  
  // arms
  stroke(0);
  line(350,340,360,320);
  line(250,340,240,320);
  
  // smile
  fill(255);
  stroke(0);
  arc(300, 294, 30, 25, -TWO_PI, -PI);
  
  // hat
  fill(mouseX,0,mouseY);
  rect(285,225,34,40);
  line(275,265,325,265);
  
  // snowflake 1
  fill(250);
  ellipse(245,280,10,10);
  
  // snowflake 2
  fill(250);
  ellipse(235,295,10,10);
  
  // snowflake 3
  fill(250);
  ellipse(255,265,10,10);
  
  // snowflake 4
  fill(250);
  ellipse(235,265,10,10);
  
  // snowflake 5
  fill(250);
  ellipse(225,280,10,10);
  
  // snowflake 6
  fill(250);
  ellipse(348,280,10,10);
  
  // snowflake 7
  fill(250);
  ellipse(358,295,10,10);
  
  // snowflake 8
  fill(250);
  ellipse(368,280,10,10);
  
  // snowflake 9
  fill(250);
  ellipse(338,265,10,10);
  
  // snowflake 10
  fill(250);
  ellipse(358,265,10,10);  
}

void teken_jorik_2()
{
  //colorMode(HSB, 360, 100, 100);
  smooth();

  strokeWeight(5);
  noStroke();
  fill(0, 40);
  rect(0, 400, 200, 200);

  for (int i = 0 ; i < flowers.length;i++) {
    flowers[i].display();
  }
  //colorMode(RGB);
  noSmooth();
  strokeWeight(1);
  stroke(0);
}

void teken_jorik_3()
{
  //fill(0,0,0);
  rect(200,400,200,200);
 
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(20);
  x = random(220,380);
  y = random(420,580);
 
  noStroke();
  fill(r,g,b,a);
  ellipse(x,y,diam,diam);
    
}

void teken_katinka()
{
  if (katinka_klaar) return;
  katinka_klaar = true;

  fill(255,255,255);
  rect(0,600,200,200);
  image(kerstkatals1, 0,600);
  fill(0,0,0);
  text("katinka wenst iedereen een",10,620);
  fill(0,0,0);
  text("fijne kerst en",10,680);
  fill(0,0,0);
  text("een gelukkig nieuw jaar !",10,790);
  image(kerstbabyals2, 145, 650);  
}

void teken_mart()
{
  image(mart_plaatje,0,200);
  textSize(50);
  
  int knipper = int(millis()) / 1000;
  if (knipper % 3 == 0)
  {
  fill(255,0,0);
  text("ho",10,250);
  }
  else if(knipper % 3 == 1)
  {
  fill(255,255,255);
  text("ho",70,310);
  }
  else
  {
  fill(0,196,0);
  text("ho",130,370);
  }
  
}

void teken_quinten()
{
  if (quinten_klaar) return;
  quinten_klaar = true;

  fill(255,255,255);
  rect(200,600,200,200);
  image(Qachtergrondkerstplaatje,200,600);
  fill(0,0,0);
  text("MERRY",282,678);
  fill(0,0,0);
  text("CHRISTMAS!",268,695);
  fill(0,0,0);
  text("Groetjes,",278,718);
  fill(0,0,0);
  text("Quinten",278,734);
  image(Qkerstkrans,206,676);
  image(Qkersthond,344,676);
}

void set_random_kerstkleur() {
  final int i = int(random(3));
  switch (i) 
  {
    case 0: fill(255, 0, 0); break;
    case 1: fill(255, 255, 255); break;
    case 2: fill(0, 128, 0); break;
  }
}

void teken_richel_1()
{
  if (richel_1_klaar) return;
  richel_1_klaar = true;
  fill(0);  
  for (int i=0; i < 360; ++i) {
    pushMatrix();
    rotate(degrees(i));
    fill(0);
    textSize(70);
    final int x = -25 + int(random(225));
    final int y = -25 + int(random(225));
    text("ho", x - 1, y);
    set_random_kerstkleur();
    textSize(64);
    text("ho", x, y);
    popMatrix();
  }    
}

void teken_richel_2()
{
  fill(128, 128, 255);
  rect(0, 0, 200, 200);
  richel_x += richel_dx;
  richel_y += richel_dy;
  if (richel_x <= 0.0) { richel_dx = abs(richel_dx); }
  if (richel_y <= 0.0) { richel_dy = abs(richel_dy); }
  if (richel_x >= 180.0) { richel_dx = -abs(richel_dx); }
  if (richel_y >= 180.0) { richel_dy = -abs(richel_dy); }
  stroke(0);
  fill(196, 196, 0);
  ellipse(richel_x + 10, richel_y + 10, 20, 20);
  fill(255, 255, 0);
  noStroke();
  ellipse(richel_x + 9, richel_y + 9, 10, 10);
}

void draw()
{
  teken_jeroen();
  pushMatrix(); translate(600, 600); teken_richel_1(); popMatrix();
  pushMatrix(); translate(600, 200); teken_richel_2(); popMatrix();
  textSize(12);
  pushMatrix(); translate(200, 0); teken_bastian(); popMatrix();
  textSize(12);
  teken_carmen_1();
  textSize(12);
  teken_carmen_2();
  textSize(12);
  pushMatrix(); translate(200, -200); teken_katinka(); popMatrix();
  textSize(12);
  teken_mart();
  textSize(12);
  pushMatrix(); translate(200, -200); teken_quinten(); popMatrix();
  teken_jorik_1();
  teken_jorik_2();
  
  pushMatrix(); translate(400, -400); teken_jorik_3(); popMatrix();
}