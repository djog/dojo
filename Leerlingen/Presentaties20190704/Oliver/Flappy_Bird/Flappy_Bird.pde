Birdy birdy;
ArrayList <Pipe> pipes = new ArrayList <Pipe>();
boolean spaceBar = false;
boolean startAgain = false;
PImage FB;

void setup()
{
  size(600, 600);
  birdy = new Birdy();
  pipes.add(new Pipe());
  FB = loadImage("Fwappy_Bird.png");
  FB.resize(60, 50);
}

void draw()
{
   background(0);
   birdy.display();    
   birdy.birdyfallsoutoftheskyandcriesforhismum();
   for(int i = pipes.size() - 1; i >= 0; i--)
   {
     // make a pipe
     pipes.get(i).show();
     pipes.get(i).moveHere();
     
     //remove 1st pipe
   if (pipes.get(i).offScreen())
   {
     pipes.remove(i);
   }
   
   //die
   if (pipes.get(i).collide(birdy))
   {
    gameOver(); 
   }
   }
   if (frameCount % 250 == 0) {
     pipes.add(new Pipe());
   }
}

void keyPressed()
{
  if(key == ' ' && spaceBar == false)
  {
    birdy.v -= 15;                               
  }
  if(key == ' ' && spaceBar)
  {
    reset();                              
  }
  if(key == ' ' && startAgain)
  {
     loop();
  }
}

void gameOver() 
{
  noLoop();
  spaceBar = true;
  birdy = new Birdy();
  pipes = new ArrayList<Pipe>();
  redraw();
  
}

void reset()
{
  spaceBar = false;
}
