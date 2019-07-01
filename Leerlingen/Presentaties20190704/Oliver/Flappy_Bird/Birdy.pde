class Birdy
{
  float x, y;
  float g; 
  float v;

  Birdy()
  {
    this.x = 50;
    this.y = height * 0.5;
    this.v = 0;
    this.g = 0.5;
  }

  void display()
  {
    image(FB, this.x, this.y);
  }

  void birdyfallsoutoftheskyandcriesforhismum()
  {
    this.v += this.g;
    this.y += this.v;
    pizza();
  }

  void pizza() 
  {
    if (this.y > height - 25)
    {
      this.v = 0;
      this.y = height - 25;

    }
    thisDot();
  }
  
  void thisDot()
  {
    if (this.y < 0)
    {
      this.v = 0;
      this.y = 12.5;
    }
  }

}
