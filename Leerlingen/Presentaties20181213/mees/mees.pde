//DIT IS GEVAARLIJK // ja
PImage plaatje;
boolean click = false;
float tijd = 0;

void setup()
{
  fullScreen();
  plaatje = loadImage("eror.jpg");
}
 void draw()
 {
   background(0,0,0);
   if(click == false){ 
     if(!(mouseX > 425 && !(mouseX > 725) && mouseY > 650 && !(mouseY > 750) && mousePressed == true)) { image(plaatje, 100, 200);
   }else click = true;
 }
 if(click == true){
   textSize(40);
   fill(255,0,0);
   text("ERROR installing", width/2, height/2);
   text(tijd, width/2 + 300, height/2);
      text("%", width/2 + 455, height/2);
      tijd += 0.1;
      if(tijd > 100.102){
        background(255);
        delay(999999999);
      }
 }
 }
