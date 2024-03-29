
//jasper
float kr = 1;
float kg = 0;
float kb = 0;
float jwp_r = 255;
float jwp_b = 0;
float jwp_g = 0;
float jwp_c = 1;

//jesper
float text1 = 0;
float[] kleur;

//oliver
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PImage oliver_santa;
float x = 37.5;
float y = x;
Minim m;
AudioPlayer player;

//richel
float richel_hoek = 0.0;

//Seb
float[] seb_xs;
float[] seb_ys;
int seb_g = 255;
float[] seb_bs;
float seb_x;
float seb_y;

void setup()
{
  size(400, 400);

  //Jasper
  
  //Jesper
  text1 = 50;
  kleur = new float[3];
  for (int i = 0; i < 3; ++i) {
    kleur[i] = random(255);
  }

  //Oliver
  oliver_santa = loadImage("santa.jpg");
  m = new Minim(this);
  player = m.loadFile("oliver.mp3");
  //  player.play();
  
  
  //Seb
  seb_xs = new float[seb_g];
  seb_ys = new float[seb_g];
  seb_bs = new float[seb_g];
  for (int i=0; i<seb_g; ++i) {
    seb_xs[i] = 150;
    seb_ys[i] = 350;
    seb_bs[i] = i * 1;
    seb_y = height;
    seb_x = width;
  }
  
}

void draw()
{
  for (int i = 1; i != 4; ++i)
  {
    line(i * 100, 0, i * 100, 1000);
    line(0, i * 100, 1000, i * 100);
  }

  //Jesper
  textSize(15);
  fill(0, 0, 0);
  rect(0, 300, 100, 100);

  fill(kleur[0], kleur[1], kleur[2]);
  text(
    "fijne_kerst_&_een\n" +
    "gelukkig_nieuwjaar", text1, height - 50);  
  text1 -= 0.7;
  //println(text1);
  if (text1 <= -120) {
    text1 = 50;
    for (int i = 0; i < 3; ++i) {
      kleur[i] = random(255);
    }
  }
  textSize(15);

  //Seb
  for (int i=0; i<seb_g; ++i) {
    seb_xs[i] += random(-10, 10);
    seb_ys[i] += random(-10, 10);
    fill(0, 0, seb_bs[i]);
    stroke(255);
    ellipse(seb_xs[i], seb_ys[i], 10, 10);
    if (seb_xs[i] > 200) seb_xs[i] = 190;
    if (seb_xs[i] < 100) seb_xs[i] = 110;
    if (seb_ys[i] < 300)seb_ys[i] = 310;
    if (seb_ys[i] > 400)seb_ys[i] = 390;
  }

  //Jasper
  fill(jwp_r,jwp_b,jwp_g);
  rect(200,200,100,100);
  if(jwp_r == 255) {jwp_c = 1;}
  if(jwp_c == 1) {jwp_r-=1; jwp_b+=1;}
  if(jwp_b == 255) {jwp_c = 2;}
  if(jwp_c == 2) {jwp_b-=1; jwp_g+=1;}
  if(jwp_g == 255) {jwp_c = 3;}
  if(jwp_c == 3) {jwp_g-=1; jwp_r+=1;}  

  //Kyrill
  stroke(0);
  line(100,0,100,height);
  line(0,100,width,100);
  line(200,0,200,height);
  line(0,200,width,200);
  line(300,0,300,height);
  line(0,300,width,300);
  line(400,0,400,width);
  line(0,400,height,400);
  fill(0,190,0);
  rect(100,165,100,35);
  fill(0,20,200);
  rect(100,100,100,65);
  stroke(100,100,00);
  fill(100,100,00);
  rect(145,175,10,25);
  stroke(0,100,0);
  fill(0,100,0);
  triangle(110,180,190,180,150,150);
  triangle(120,160,180,160,150,140);
  triangle(130,145,170,145,150,130);
  stroke(255,255,00);
  fill(255,255,00);
  ellipse(150,130,10,10);
  

  //Richel
  fill(0, 0, 255);
  textSize(40);

  fill(0, 0, 0);
  rect(300, 200, 100, 100);
  fill(255, 128, 0);
  textSize(85);
  translate(350, 250); 
  rotate(richel_hoek);
  text("R", 320 - 350, 290 - 250);
  rotate(-richel_hoek);
  translate(-350, -250); 
  richel_hoek += 0.01;
  textSize(15);

 
  //Fijne kerst
  fill(0, 0, 0);
  rect(100, 000, 100, 100);
  rect(200, 000, 100, 100);
  rect(300, 000, 100, 100);
  rect(000, 100, 100, 100);
  rect(200, 100, 100, 100);
  rect(300, 100, 100, 100);
  rect(000, 200, 100, 100);
  rect(100, 200, 100, 100);
  rect(200, 300, 100, 100);
  rect(300, 300, 100, 100);


  textSize(85);
  fill(255, 0, 0);
  text("F", 120, 80);
  text("I", 240, 80);
  text("J", 340, 80);
  text("N", 220, 180);
  text("E", 320, 180);

  fill(0, 255, 0);
  text("K", 20, 180);
  text("E", 20, 280);
  text("R", 120, 280);
  text("S", 220, 380);
  text("T", 320, 380);

  //Oliver
  fill(255);
  rect(-1, -1, 101, 101);
  image(oliver_santa, x, y, 25, 25);
  if (keyPressed)
  {
    if (keyCode == UP)y--;
    if (keyCode == DOWN)y++;
    if (keyCode == LEFT)x--;
    if (keyCode == RIGHT)x++;
  }
}
