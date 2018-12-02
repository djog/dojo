float y_een = 0;
float x_een = 0;
float snelheid = 1;
float points = 0;

boolean game_over = false;

void setup()
{
  size(500,500);
  y_een = random(height);
  x_een = width + 50;
}
void draw()
{
  background(255);
  x_een -= snelheid;
  if(dist(mouseX, mouseY, x_een, y_een) < 25)
  {
    snelheid += 0.5;
    points += 1;
    x_een = width + 50;
    y_een = random(height);
  }
  if(x_een < (width/2) + 25)
  {
    game_over = true;
    stroke(0);
    fill(0);
    snelheid = 0;
  }
  if (game_over == true)
  {
    text("you lost", 100, 200, 200);
    points = 0;
  }
  stroke(0);
  ellipse(x_een,y_een,50,50);
  ellipse(mouseX, mouseY, 20, 20);
  fill(255);
  stroke(0,0,0);
  line(width/2, 0, width/2, height);
  fill(0);
  text(points, 150, 250, 250);
}