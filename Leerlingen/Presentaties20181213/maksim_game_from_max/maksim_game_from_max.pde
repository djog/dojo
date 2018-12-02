float ballX = 20;
float ballY = 100;
float speedX = 2;
float speedY = 30;
int hit = 0;
int mis = 0;
void setup() {size(600,400);}
void draw() {
  if(mousePressed) {hit = 0; mis = 0;}
  float paddle = 1000/ (hit+10);
  if(ballX < 0 || ballX > width) speedX = -speedX;
  if(ballY > height) {speedY = -speedY;float distance = abs(mouseX - ballX);if (distance < paddle) hit += 1;else mis += 1;}
  else speedY += 1;
  ballX += speedX;
  ballY += speedY;
  background(100,200,50);
  fill(200,100,50);
  triangle(ballX,ballY,50,50, 50, 50);
  fill(50,100,20);
  rect(mouseX-paddle,height-10,2*paddle,30);
fill (0);
text ("hit: " + hit, 10, 20);
text ("mis: " + mis, 18, 40);
}