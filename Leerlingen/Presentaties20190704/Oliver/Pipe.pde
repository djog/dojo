class Pipe
{
  float top;
  float bottom;
  float x; 

  Pipe()
  {
    this.x = width;
    this.bottom = random(40, height/2 - 20); 
    this.top = random(40, height/2 - 20);
  }

  void show()
  {
    rect(this.x, 0, 20, this.top);
    rect(this.x, height - this.bottom, 20, this.bottom);
  }

  void moveHere()
  {
    this.x -= 1;
  }

  boolean offScreen() 
  {
    if (this.x <  -50)
    {
      return true;
    } else
    {
      return false;
    }
  }

  boolean collide(Birdy bird) 
  {
    if (bird.x > this.x && bird.x < this.x + 20)
    {
     if(bird.y < this.top || bird.y > height - this.bottom)
     {
     return true;
     }else
     {
      return false; 
     }
    }else
    {
      return false;
    }
  }
}
