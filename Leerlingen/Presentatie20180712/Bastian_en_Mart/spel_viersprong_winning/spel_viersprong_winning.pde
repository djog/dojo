boolean beurtrood = false;
boolean beurtblauw = true;
boolean beurtgeel = false;
boolean beurtwit = false;
//blauw er in
boolean blauwlinkserin = false;
boolean blauwrechtserin = false;
boolean blauwbovenerin = false;
boolean blauwondererin = false;
//coördinaten blauw
boolean plek_blauw_585_210 = false;
boolean plek_blauw_320_400 = false;
boolean plek_blauw_320_210 = false;
boolean plek_blauw_585_400 = false;
int puntrood = 0;
int puntblauw = 0;
int puntgeel = 0;
int puntwit = 0;
void setup() {
  size(900, 600);
}

void plek_blauw()
{
  if (plek_blauw_585_210 == true)
  {
    fill(10, 20, 250);
    ellipse(585, 210, 65, 65);
  }

 if (plek_blauw_320_400 == true)
  {
    fill(10, 20, 250);
    ellipse(320, 400, 65, 65);
  }
  
  if (plek_blauw_320_210 == true)
  {
   fill(10, 20, 250);
   ellipse(320, 210, 65, 65);
  }
  
  if (plek_blauw_585_400 == true)
  {
   fill(10, 20, 250);
   ellipse(585, 400, 65, 65);
  }
}

void rood()
{
  textSize(25);
  fill(250, 20, 10);
  text("punten rood: " + puntrood, 360, 80); 
  if (beurtrood == true)
  {
    text("rood", 180, 60);
  }
}

void blauw()
{
  textSize(25);
  fill(10, 20, 250);
  text("punten blauw: " + puntblauw, 670, 280); 
  if (beurtblauw == true)
  {
    text("blauw", 180, 60);
  }
  ellipse(750, 200, 65, 65);
  if (blauwlinkserin == true)
  {
    plek_blauw_585_210 = true;
    beurtblauw = false;
    beurtgeel = true;
    blauwlinkserin = false;
  }
  if (blauwrechtserin == true)
  {
    plek_blauw_320_400 = true;
    beurtblauw = false;
    beurtgeel = true;
    blauwrechtserin = false;
  }
  if (blauwbovenerin == true)
  {
    plek_blauw_320_210 = true;
    beurtblauw = false;
    beurtgeel = true;
    blauwbovenerin = false;
  }
  if (blauwondererin == true)
  {
    plek_blauw_585_400 = true;
    beurtblauw = false;
    beurtgeel = true;
    blauwondererin = false;
  }
}

void geel()
{
  textSize(25);
  fill(250, 250, 20);
  text("punten geel: " + puntgeel, 360, 530); 
  if (beurtgeel == true)
  {
    text("geel", 180, 60);
  }
}

void wit()
{
  textSize(25);
  fill(250, 250, 250);
  text("punten wit: " + puntwit, 60, 280); 
  if (beurtwit == true)
  {
    text("wit", 180, 60);
  }
}

void draw()
{
  background(155, 155, 155);
  fill(15, 180, 255);
  //speelbord
  rect(280, 120, 350, 350);
  //kleuren
  rood();
  blauw();
  geel();
  wit();
  //plek van de bolletjes
  plek_blauw();
  text("Aan de beurt: ", 10, 60);
}
void keyPressed()
{
  //blauw
  if (keyCode == LEFT && beurtblauw == true)
  {
    blauwlinkserin = true;
  }
  if (keyCode == RIGHT && beurtblauw == true)
  {
    blauwrechtserin = true;
  }
  if (keyCode == UP && beurtblauw == true)
  {
    blauwbovenerin = true;
  }
  if (keyCode == DOWN && beurtblauw == true)
  {
    blauwondererin = true;
  }
}