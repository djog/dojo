float redCellX = 1375;
float levensStrook = 100;
float aantalVirussen = 1;
boolean is_poppetje_dood = false;
void setup(){
size(1375,800);
background(237,98,110);
fill(237,43,59);
rect(0,400,1375,400);
fill(0,0,200);
}
void draw(){
  background(237,98,110);
 fill(237,43,59);
rect(0,400,1375,400);
if (is_poppetje_dood == true){
  aantalVirussen=aantalVirussen + 1;
  is_poppetje_dood=false;
  redCellX = 1375;
  levensStrook = 100;
}
if (is_poppetje_dood == false) 
{
  redCellX = redCellX-3;
  fill(255,0,0);
  ellipse (redCellX,400,100,100) ;
}
fill(0,0,200);
ellipse(pmouseX,pmouseY,100,100);
fill(0,255,0);
rect (redCellX,300,levensStrook,2);
if(dist(pmouseX,pmouseY,redCellX,400)<= 100) { levensStrook  = levensStrook-1; }
if(levensStrook<=0) 
{ 
  levensStrook=0;
  is_poppetje_dood = true;
}
}