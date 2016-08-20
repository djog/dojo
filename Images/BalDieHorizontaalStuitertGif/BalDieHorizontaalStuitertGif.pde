float x = 300;
float dx = 1;

void setup()
{
  size(600, 100);
}

int i =0;

void draw()
{
  ellipse(x,50,100,100);
  x = x + dx;
  if (x > 550 || x < 50)
  {
    dx = -dx;
  }
  
  if(i%10 == 0){
    saveFrame("Bal-###.png");
  }
  if(i == 1200){
    exit();
  }
  ++i;
}