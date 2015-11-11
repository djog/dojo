Ship player;
PImage playerImg;

Star[] starField = new Star[1024];
IntList pressedKeys = new IntList();
ArrayList<Laser> lasers = new ArrayList<Laser>();

boolean paused = false;

void setup(){
  playerImg = loadImage("Player.png");
  
  fullScreen(P2D);
  noCursor();
  strokeWeight(2);
  player = new Ship(playerImg);
  player.reset();
  
  for (int s = 0; s < starField.length; ++s){
    starField[s] = new Star();
  }
}

void draw(){
  float skyFade = max(1-millis()/9000.0, 0);
  if (skyFade > 0){
    background(255 * pow(skyFade, 5), 255 * pow(skyFade, 3), 255 * pow(skyFade, 2));
  }
  else background(0);
  noStroke();
  for (int s = 0; s < starField.length; ++s){
    starField[s].update();
    starField[s].display();
  }
  
  for (int l = 0; l < lasers.size(); ++l){
    Laser laser = lasers.get(l);
    if (laser.position.y < -height) lasers.remove(l);
    laser.update();
    laser.display();
  }
    
  player.update();
  player.display();
  
  processInput();
}

void keyPressed(){
  if (key == 'p') {
    if (paused) loop();
    else noLoop();
    paused = !paused;
  }
  for (int k = 0; k < pressedKeys.size(); ++k){
    if (pressedKeys.get(k) == key) return;
  }
  pressedKeys.append(key);
}
void keyReleased(){
  for (int k = 0; k < pressedKeys.size(); ++k){
    if (pressedKeys.get(k) == key){
      pressedKeys.remove(k);
    }
  }
}
void processInput(){
  PVector playerDirection = new PVector();
  for (int k = 0; k < pressedKeys.size(); ++k){
    switch (pressedKeys.get(k)){
      case 'l': player.fire(); break;
      case 'w': { playerDirection.add( 0.0f, -1.0f); } break;
      case 'a': { playerDirection.add(-1.0f,  0.0f); } break;
      case 's': { playerDirection.add( 0.0f,  1.0f); } break;
      case 'd': { playerDirection.add( 1.0f,  0.0f); } break;  
    }
  }
  player.velocity = player.velocity.mult(9).add( playerDirection.normalize().mult(10).add(new PVector(0, 1)) ).mult(0.1f);             //Bah!
}

//Classes

class Ship {
  PImage image;
  PVector position, velocity, size;
  float health = 10;
  int shotInterval = 235;
  int lastShot = millis() + shotInterval;
  
  Ship(PImage shipImage) {
    image = shipImage;
    velocity = new PVector();
    size = new PVector(image.width, image.height);
  }
  
  void reset() {
    position = new PVector(width/2, height/2);
    velocity.mult(0);
  }
  
  void update(){
    position.add(velocity);
    if (position.x < - 0.5*image.width) { position.x += width; }
    else if (position.x > width + 0.5*image.width) { position.x -= width; }
    //position.x = constrain(position.x, size.x, width - size.x);
    position.y = constrain(position.y, size.y, height - size.y);
  }
  
  void display(){
    //Teken vlam
    blendMode(ADD);
    for (int i = -1; i <= 1; ++i){
      for (int f = 0; f < 5; ++f){
        fill(random(128, 255), random(128, 255), random(32*f, 32*f+128), 128);
        stroke(128, 0, 0);
        ellipse(position.x - 0.1*f * velocity.x + i * width, position.y + 32 + random(5, 5 + 2 * f), random(1, 20 - 2*f), 42 - 3*velocity.y + random(5));
      }
    }
    
    //Teken schip
    blendMode(BLEND);
    for (int i = -1; i <= 1; ++i){
      image(image,
            position.x - image.width/2 + i*width,
            position.y - image.height/2);
    }
  }
  
  void fire(){
    
    if (millis() > lastShot + shotInterval){ 
      for (int l = -1; l <= 1; ++l){
        lasers.add(new Laser( new PVector(player.position.x + l * 23, player.position.y + abs(l % 2) * 64) ));
        lastShot = millis();
      }
    }  
  }
}

class Laser {
  PVector position, velocity, size;
  
  Laser(PVector pos){
    size = new PVector(5, 32);
    position = new PVector(pos.x, pos.y - 23);
    velocity = new PVector(0, -42);
  }
  
  void update(){
    position.add(velocity);
  }
  
  void display(){
    if (position.y < -size.y * 2) return;
    blendMode(ADD);
    fill (random(255), 255, random(64));
    stroke(random(128), random(255), random(128), 128);
    for (int i = -1; i <= 1; ++i){
      ellipse(position.x + i*width, position.y,
              size.x, size.y*2);
    }
  }
}

class Star {
  PVector position = new PVector();
  float velocity;
  float diameter;
  color tint;
  
  Star(){
    position.x = random(width);
    position.y = random(height);
    position.z = random(0.0, 1.0);
    
    diameter = 5 / (position.z + 2);
    tint = color(random(192, 255),
                 random(192, 255),
                 random(192, 255),
                 255 / (2 * position.z + 1));
  }
  
  void update(){
    velocity = (4.2 - (3.0 * player.position.y / height)) * (1.5 - position.z);
    position.y += velocity;
    position.y %= height;
  }
  
  void display(){
    float sizeMultiplier = min(max((millis()-2358)/5000.0, 0), 1);
    fill(tint); 
    ellipse(position.x,
            position.y,
            sizeMultiplier * diameter,
            sizeMultiplier * diameter + 0.5 * velocity);
  }
}