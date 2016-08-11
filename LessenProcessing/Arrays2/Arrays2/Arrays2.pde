int aantal_punten = 100;
float[] xs;
float[] ys;

void setup() 
{
  size(320, 200);
  xs = new float[aantal_punten];
  ys = new float[aantal_punten];
  for (int i=0; i!=aantal_punten; ++i)
  {
    ys[i] = 160;
    xs[i] = 100;
  }
}

void draw()
{
  for (int i=0; i!=aantal_punten; ++i)
  {
    xs[i] += random(-1,1);
    ys[i] += random(-1,1);
    ellipse(xs[i], ys[i], 10, 10);
  }
}