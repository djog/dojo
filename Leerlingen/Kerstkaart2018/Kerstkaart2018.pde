//jasper
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

void setup()
{
  size(400, 400);

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
  player.play();
}

void draw()
{
  for (int i = 1; i != 4; ++i)
  {
    line(i * 100, 0, i * 100, 1000);
    line(0, i * 100, 1000, i * 100);
  }


  //Jesper
  fill(0, 0, 0);
  rect(0, 300, 100, 100);

  fill(kleur[0], kleur[1], kleur[2]);
  text(
    "fijne_kerst_&_een\n" +
    "gelukkig_nieuwjaar", text1, height - 50);  
  text1 -= 0.7;
  println(text1);
  if (text1 <= -120) {
    text1 = 50;
    for (int i = 0; i < 3; ++i) {
      kleur[i] = random(255);
    }
  }
  textSize(15);

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


  //Richel
  fill(0, 0, 255);
  textSize(40);

  fill(0, 0, 0);
  rect(300, 200, 100, 100);
  fill(255, 0, 0);
  textSize(85);
  translate(350, 250); 
  rotate(richel_hoek);
  text("R", 320 - 350, 290 - 250);
  rotate(-richel_hoek);
  translate(-350, -250); 
  richel_hoek += 0.01;
  textSize(15);
  //jasper
  
}
