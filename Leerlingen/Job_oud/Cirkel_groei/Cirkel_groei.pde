float tellertje =0;
float snelheid = 2;
void setup(){
   size(600,400);
}

void draw(){
  ellipse(300,200,tellertje,tellertje);
  
  tellertje = tellertje + snelheid ;
  
fill(tellertje,255 - tellertje);

}