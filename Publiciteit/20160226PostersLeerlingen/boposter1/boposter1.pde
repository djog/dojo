


void setup() {
  size(842,595);
  
  
  
}

void  draw()  {
  

  background(255,125,0);
  fill(0,0,255);
  textSize(115);
  text("PROCESSING", 50, 280);
  
  
  
  for(int i=0; i<800; i=i+100)
  {
  rect(15+i,15,20,60);
  rect(75+i,15,20,60);
  ellipse(55+i,50,40,35);
  rect(45+i,5,20,40);
  }
  
  
  
  
  save("BoPoster0.png");
  exit();
  
}