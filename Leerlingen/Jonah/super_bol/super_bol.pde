boolean is_game_over = false;
void setup  ()
{
textSize(50);
  size(500,500);
}
void draw ()
{

  
  
  
  
background(0,255,0);
ellipse(400,75,100,100);
ellipse(300,400,50,50);

ellipse(100,100,150,150);





rect(0,200,500,60);
fill(0,255,255);
ellipse(mouseX,mouseY,50,50);
fill(255);
if(mouseY -25 < 200){
  fill(255,0,0);
}
if(mouseY+25 > 260){
  is_game_over = true;
  fill(255,0,0);
}



else{
  is_game_over = false;
} if (is_game_over) 
    {
    text("game_over",200,50);
    
    }
    
}