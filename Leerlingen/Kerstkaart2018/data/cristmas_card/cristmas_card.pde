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

void setup()
{
  size(100, 100);
  oliver_santa = loadImage("santa.jpg");
  m = new Minim(this);
  player = m.loadFile("oliver.mp3");
  player.play();
}

void draw()
{
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
