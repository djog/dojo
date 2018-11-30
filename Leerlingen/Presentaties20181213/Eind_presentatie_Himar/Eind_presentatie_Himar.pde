float x = 150;
float y = 100;
float snelheid_naar_rechts = 1;
int botsingen = 0;

void setup()
{
  size(300, 200);
}

void draw()
{
  background(0,0,0);
  stroke(128,0,0);
  ellipse(x, y, 50, 50);
  fill(255, 255, 255);
  text("aantal_botsingen",10,10);
   text(botsingen,10,35);
  fill(255, 0, 0);
  x = x + snelheid_naar_rechts;
  if (x > 275)
  {
    snelheid_naar_rechts = - snelheid_naar_rechts;
    botsingen++;
    
  }
  if (x < 25)
  {
    snelheid_naar_rechts = -snelheid_naar_rechts;
    botsingen = botsingen + 1;
  }
}
