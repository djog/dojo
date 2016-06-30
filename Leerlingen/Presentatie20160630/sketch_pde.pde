int plek = 0;

void setup() {
  size(1300,800);
  plek = (int)random(1, 6);
}

void draw()
{
  if (plek == 1) { fill(20,123,55); }
  else { fill(255); }
  ellipse(200,500,100,100);
  
  if (plek == 2) { fill(20,123,55); }
  else { fill(255); }
  ellipse(350,350,100,100);
  
  if (plek == 3) { fill(20,123,55); }
  else { fill(255); }
  ellipse(500,200,100,100);

  if (plek == 4) { fill(20,123,55); }
  else { fill(255); }
  ellipse(700,200,100,100);

  if (plek == 5) { fill(20,123,55); }
  else { fill(255); }
  ellipse(850,350,100,100);

  if (plek == 6) { fill(20,123,55); }
  else { fill(255); }
  ellipse(1030,500,100,100);
  
}