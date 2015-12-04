float getal = 50;

boolean groeien = true; // groeien wordt waar

void setup(){
  size(500,500);
  fill(0,128,0);
  stroke(255);

}

void draw(){
  background(0);
  ellipse(255,250,getal,getal);
  
  if(groeien == true)  // als niet waar)
  {
  
  getal = getal + 1;
  
  }
  
  if(groeien == false)  // als niet waar)
  {
  
  getal = getal - 5;
  
  }
  
  if(getal == 400)
  {
 
   groeien = false;
    
  
  }
}
  