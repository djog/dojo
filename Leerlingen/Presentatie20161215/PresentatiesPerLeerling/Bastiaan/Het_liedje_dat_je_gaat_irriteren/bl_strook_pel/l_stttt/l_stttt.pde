int ball_x = 0;
int ball_dx = 1;
int player_x = 0;
int ball_r = 0;
int player_sz = 2;

void setup()
{
  size(600, 100);
  strokeWeight(2);
  rectMode(CENTER);
  player_x = width - player_sz;
  ball_x = width / 2;
  ball_r = (height / 2) - 1;
}

void draw()
{
  background(255);
  ellipse(ball_x, height / 2, ball_r*2, ball_r*2);
  rect(player_x, height / 2, 2, 100);
  ball_x += ball_dx;
  if (ball_x - 2 == ball_r) {
    if (player_x < ball_r) { 
      ball_dx = -ball_dx;
    } else { 
      ball_x = width / 2;
      player_x = player_sz;
    }
  }
  if (ball_x + player_sz == width - ball_r) {
    if (player_x > width - ball_r) { 
      ball_dx = -ball_dx;
    } else { 
      ball_x = width / 2;
      player_x = width - player_sz;
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == LEFT ) { player_x = player_sz; }
    if (keyCode == RIGHT) { player_x = width - player_sz; }
  }
}