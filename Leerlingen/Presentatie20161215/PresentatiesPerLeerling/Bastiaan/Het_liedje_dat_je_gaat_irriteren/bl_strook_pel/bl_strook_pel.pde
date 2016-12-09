PVector b = new PVector(500,300);
PVector v = new PVector(0,4);
float px = 500;
float pv = 0;
float s = 64;

void setup(){
  size(1000,600);
  noStroke();
  fill(64,255,64);
  rectMode(CENTER);
}

void draw(){
  background(64,constrain(s,0,255),64);
  ellipse(b.x,b.y,50,50);
  rect(px,height-10,100,20);
  
  b.set(b.x+v.x,b.y+v.y);
  px += pv;
  
  if(b.x <= 25 || b.x >= width){
    v.set(-v.x,v.y);
    b.set(constrain(b.x,26,width-1),b.y);
  }
  if(b.y <= 25){
    v.set(v.x,-v.y);
    b.set(b.x,constrain(b.y,26,height-46));
  }
  if(b.y >= height-45 && b.x > px-50 && b.x < px + 50){
    v.set(v.x + pv,-v.y);
    b.set(b.x,constrain(b.y,26,height-46));
  }
  else if(b.y >= height-25){
    b.set(width/2,height/2);
    v.set(0,4);
    ++s;
  }
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == LEFT && px > 5){
      pv = -5;
    }
    else if(keyCode == RIGHT && px < width-5){
      pv = 5;
    }
    else{
      pv = 0;
    }
  }
}

void keyReleased(){
  pv = 0;
}