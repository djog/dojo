void setup() 
{
  size(1000, 1000);
}


void draw()
{

  stroke(200);
  background(mouseX, mouseY);
  line(200, 200, 100, 300);
  line(200, mouseX, 100, 500);
  line(300, 450, 350, 500);
  line(300, 200, 400, mouseY
    );


  fill(255, 10, 0, 155);
  rect(200, 200,mouseX,mouseY);

  //mouseX,mouseY

  fill(mouseY,mouseX);
  ellipse(250, 100, 200, 200);

  fill(255, 120, 0, 255);
  //ellipse(mouseX,mouseY,10,10);
  ellipse(mouseY, mouseX, mouseX, mouseY);
}