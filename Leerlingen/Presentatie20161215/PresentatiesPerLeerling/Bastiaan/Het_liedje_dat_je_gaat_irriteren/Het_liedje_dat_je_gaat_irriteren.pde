import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
AudioPlayer muziek;


//Hallo.//


//En dan komt nu.//


//Het liedje dat je gaat irriteren.//


final int aantal_punten = 3500;
float[] xs;
float[] ys;

float x = 300;
float y = 50;
float dx = 4;
float dy = 0;
float g = 0.9;


void setup()


{
  
  
minim = new Minim(this);
muziek = minim.loadFile("Dit is een liedje... en dat gaat je irriteren....mp3", 2048);
muziek.loop();    

  
size(1400,730,P3D);


  xs = new float[aantal_punten];
  ys = new float[aantal_punten];
  for (int i=0; i!=aantal_punten; ++i)
  {
    xs[i] = 800;
    ys[i] = 390;
}
  

}


void draw()


{
  
    
  stroke(204, 102, 255);
  background(282,222,188);

  
  
  for (int i=0; i!=aantal_punten; ++i)
  {
    xs[i] += random(-1,1);
    ys[i] += random(-1,1);
    ellipse(xs[i], ys[i], 10, 10);
  }
  
  
  line(0,10,1400,10);
  
  
  ellipse(x,y,100,100);
  fill(255,255,255);
  ellipse(x,y,75,75);
  fill(255,0,0);
  ellipse(x,y,50,50);
  fill(0,255,0);
  ellipse(x,y,25,25);
  fill(0,0,255);
  ellipse(x,y,12,12);
  fill(0,255,255);
  ellipse(x,y,4,4);
  fill(111,1,56);
 
  
  x = x + dx;
  y = y + dy;
  dy = dy + g;
  if (x > 1350 || x < 50)
  {
    dx = -dx;
  }
  if (y > 680)
  {
    dy = -dy;
  }


  fill(155,155,25);
  rect(1160,40,170,705);
  fill(0,0,0);
  
  
  //text//
  
  
  text("Het liedje dat je gaat irriteren.", 923,100);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,200);  
  text("Dit is een liedje, en dat gaat je irriteren." ,10,225);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,250);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,275);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,300);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,325);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,350);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,375);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,400);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,425);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,450);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,475);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,500);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,525);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,550);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,575);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,600);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,625);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,650);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,675);
  text("Dit is een liedje, en dat gaat je irriteren." ,10,700);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,200);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,225);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,250);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,275);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,300);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,325);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,350);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,375);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,400);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,425);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,450);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,475);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,500);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,525);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,550);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,575);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,600);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,625);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,650);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,675);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,700);
  text("Dit is een liedje, en dat gaat je irriteren." ,450,700);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,200);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,225);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,250);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,275);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,300);                                                                                                                                                                                                                                                                                                                                                      
  text("Dit is een liedje, en dat gaat je irriteren." ,900,325); 
  text("Dit is een liedje, en dat gaat je irriteren." ,900,350);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,375);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,400);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,425);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,450);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,475);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,500);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,525);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,550);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,575);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,600);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,625);
  text("Dit is een liedje, en dat gaat je irriteren." ,900,650);
  text("X10" ,900,675);
  text("Dit is een liedje, was behoorlijk irritant." ,900,700);  
  text("PRESENTATIE BASTIAN", 505,100);
  
  
  //einde text//
  
  
  ellipse(mouseX,mouseY,25,15); 
  line(300,10,300,700);
  line(330,10,330,700);
  line(360,10,360,700);
  line(390,10,390,700);
  
  
  ellipse(803,150,112,200); 
  
  
  rect(720,540,150,160);
  
  
  ellipse(105,110,130,115);


}