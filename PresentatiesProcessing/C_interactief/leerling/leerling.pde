float x = 5;

void setup(){
  size(500,500);
  fill(255,0,0);
  noStroke();
}

void draw(){
  background(255);
  rect(width/2-x/2,height/2-100,x,200);
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT){
      x = x-5;
    }
    else if(keyCode == RIGHT){
      x = x+5;
    }
  }
}