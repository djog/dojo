float[] geheime_getallen;

void setup()
{
  size(400,400);
  geheime_getallen = new float[1];
  geheime_getallen[0] = 42;
}

void draw() 
{
  float x = geheime_getallen[0];
  ellipse(x,200,300,400);
}