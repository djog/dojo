import ddf.minim.*;
Minim minim;
AudioPlayer player;

void setup()
{
  minim = new Minim(this);
  player = minim.loadFile("mijn_muziekje.mp3");
  player.play();
}

void draw()
{
  text("Gelukt!", 10, 20);
}
