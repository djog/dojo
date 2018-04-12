PImage plaatje;

float x = 1150;
float y = 900;
float hoek = 0;
float schaal = 3; //Hoeveel is de kaart ingezoomd?
final float loopsnelheid = 5;
final float draaisnelheid = 0.1;
void setup() 
{
  fullScreen();
  plaatje = loadImage("Contra3Stage2Map.png");
  noSmooth();
  x = 1150;
  y = 900;
}

void draw() 
{
  background(0, 0, 0);
  scale(schaal);
  //Zorg dat het midden van het scherm het draaipunt wordt
  translate(width / schaal / 2 , height / schaal /2);
  rotate(hoek);
  translate(-x,-y);
  image(plaatje, 0, 0);
  ellipse(x, y, 20, 20);
  if (keyPressed)
  {
    if (key == 'a') hoek = hoek + draaisnelheid;
    if (key == 'd') hoek = hoek - draaisnelheid;
    if (key == 'w') 
    {
      y = y - (cos(hoek) * loopsnelheid);
      x = x - (sin(hoek) * loopsnelheid);
    }
    if (key == 's')
    {
      y = y + (cos(hoek) * loopsnelheid);
      x = x + (sin(hoek) * loopsnelheid);
    }
    if (key == '-') schaal = schaal / 1.1;
    if (key == '+') schaal = schaal * 1.1;
  }
}