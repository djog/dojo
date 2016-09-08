```
float x = 0;
float y = 0;
float y2 = 0;
float x2 = 0;
void setup() {
  size(2000, 1000);
}

void draw() {
  if (keyPressed) {
    if (keyCode == RIGHT) {
      x=x+2;
    }    
    if (keyCode == LEFT) {
      x=x-2;
    }
  }

  background(0, 0, 70);
  //de zombie
  fill(41, 196, 76);
  rect(x+85, y+ 710, 30, 60);
  rect(x+85, y+ 710, 30, 60);
  line(x+110, y+ 715, x+ 190, y+ 712);
  line(x+100, y+ 800, x+ 110, y+ 735);
  rect(x+85, y+ 710, 30, 60);
  ellipse(x+100, y+ 700, 30, 30);
  fill(120, 120, 120);

  //maan en grond
  ellipse(5, 5, 100, 100);
  fill(118, 59, 46);
  rect(0, 800, 2000, 20000);

  //de zombie 2
  fill(100, 196, 76);
  rect(x2+85, y2+ 710, 30, 60);
  rect(x2+85, y2+ 710, 30, 60);
  line(x2+110, y2+ 715, x2+ 190, y2+ 712);
  line(x2+100, y2+ 800, x2+ 110, y2+ 735);
  rect(x2+85, y2+ 710, 30, 60);
  ellipse(x2+100, y2+ 700, 30, 30);
  fill(120, 120, 120);

  if (keyPressed) {
    if (key == 's') {
      x2=x2+2;
    }
    if (key == 'a') {
      x2=x2-2;
    }
  }
}

```
