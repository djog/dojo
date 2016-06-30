float richting = 2;
float x = 0;
float y = 0;
boolean gameOver = false;

void setup() {

  size(800, 800);
  background(0);
  textSize(50);
}


void draw() {

  if (gameOver) {
    background(0);
    text ("game over", 400, 100, 600 );
    x=400;
    
    y=400;
    if (keyPressed) {
      gameOver =false;
      background(0);
    }
  }
  
  if (get(int(x+3), int(y+3)) != color(0))
  {
    gameOver = true;
    
  }
  

   rect(x, y, 7, 7);

  if (richting == 0) {
    y = y-7;
  }
  if (richting == 1) {
    y = y+7;
  }
  if (richting == 2) {
    x = x +7;
  }
  if (richting == 3) {
    x = x -7;
  }

  if (keyPressed) {
    if (key == 'w') {
      richting = 0;
    }
    if (key == 's') {
      richting =1;
    }
    if (key == 'd') {
      richting =2;
    }
    if (key == 'a') {
      richting = 3;
    }
  }

  if (x>800 || y>800 || x<0 || y<0) {
    gameOver = true;
  }
  
  
}
