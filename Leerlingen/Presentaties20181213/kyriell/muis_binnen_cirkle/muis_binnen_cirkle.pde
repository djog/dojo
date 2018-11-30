float cirkel_midden_x = 150;
float cirkel_midden_y = 100;
float cirkel_doorsnede = 150;
float cirkel_straal = 100;
void setup()
{
  size(300,200);
  cirkel_midden_x = random(width);
  cirkel_midden_y = random(height);
  cirkel_doorsnede = random(150);
  cirkel_straal = cirkel_doorsnede / 2;
}
void draw()
{
  fill(255);
  if(dist(mouseX,mouseY,cirkel_midden_x,cirkel_midden_y) < cirkel_straal)
  {
    fill(255, 0, 0);
  }
  ellipse(cirkel_midden_x,cirkel_midden_y,cirkel_doorsnede,cirkel_doorsnede);
}