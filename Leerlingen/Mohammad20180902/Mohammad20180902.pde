int NUM = 70;
PVector[] location = new PVector[NUM];
float phase, velocity, radius;
float t, r, w;

void setup() { 
  fullScreen();
  frameRate(60); 
  background(40); 
  strokeWeight(4);
  colorMode(HSB, 360, 100, 100);
  phase = 90.0;
  velocity = 5.0;
  radius = height / 1.0;
  t = 35.09;

  for (int i = 0; i < NUM; i++) {     
    location[i] = new PVector(10, 17);
  } 
  
}


void draw() { 
  fill(0);  
  rect(0, 0, width, height); 
  float w = random(-5000, 5000);
  for (int i = 1; i < NUM; i++) {
    location[i].x = cos(radians(phase) / NUM * (i + 1)) * radius;  
    location[i].y = sin(radians(phase) / NUM * (i + 1)) * radius;    
    noFill();
    float r =(i + 1) * NUM / 6.0;
    stroke(pow(random(40), 50), 20, pow(random(100), 255), 100);
    stroke(i * 10, 255, 100);

    beginShape();
    for (float angle = t; angle < TWO_PI + t; angle += TWO_PI/60) {
      vertex(r*cos(angle)+width/2 + location[i].x, r*sin(angle)+height/2+location[i].y );
    }
    endShape(CLOSE);
  }

  phase += velocity;
}