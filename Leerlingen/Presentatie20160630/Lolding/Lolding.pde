void setup() {
  size (1920,1080);


}

void draw() {

 fill(mouseX, mouseY, mouseX + mouseY);
 rect(mouseX,mouseY,100,100);

 fill(mouseX + mouseY / 5, mouseX, mouseY);

  rect (mouseX,mouseY,75,75);
  fill(255,0,0);

  ellipse(mouseX,mouseY,50,50);
  fill (0,0,255);
}