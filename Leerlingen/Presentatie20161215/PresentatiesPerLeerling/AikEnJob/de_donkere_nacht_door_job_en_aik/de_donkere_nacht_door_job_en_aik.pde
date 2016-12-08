import ddf.minim.*; 
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;      
import ddf.minim.ugens.*;
Minim minim;
AudioPlayer music;
float level = 0; 
float poppetje =0;
float x = 0;
float y = 0;
float y2 = 0;
float x2 = 0;
float x3 = 950;
float y3 = 630;
float x4 = 950;
float y4 = 630;
float x5 = 950;
float y5 = 630;
float x6 = 0;
float x100 =0;
float y100 =0;
PImage plaatje;
PImage plaatje2;
PImage plaatje3;
PImage plaatje4;  
PImage plaatje5; 
PImage plaatje6; 
PImage plaatje7;                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   // dit zal jij nooit zien hahaha
void setup() {
  minim = new Minim(this);
  music = minim.loadFile("Night of Chaos.mp3", 2048);
  music.loop();
  size(2000, 1000);
  plaatje = loadImage("Fireblast_strip3.png");
  // plaatje2.resize(100, 100);
  plaatje3 = loadImage("duche.jpg");
  plaatje4 =loadImage("slaakamer.jpg");
  plaatje5 =loadImage("1.png");
  plaatje6 =loadImage("2.png");
  plaatje7 =loadImage("3.png");
  plaatje4.resize(1700, 1000);
  plaatje3.resize(1700, 1000);
  plaatje2 = loadImage("wc.jpg");
}


void draw() {

  x6 =x6 +1;
  if (keyPressed) { 
    x3 =x3 +1;                                                                                                                                                                                                                                                                                                                                                                       
    if (key == 's' || key == 'S') {
      x2=x2 + 2;
    }
    if (key == 'a' || key == 'A') {
      x2=x2-2;
    }
  }

  if (mousePressed) {
    if (mouseButton == RIGHT) {
      x=x+2;
    }    
    if (mouseButton == LEFT) {
      x=x-2;
    }
  }
  if (key == 'A') {
  }
  if (x2 > 1450 || x> 1450) {
    level=level+1;
    x2 = 0;
    x2 = 0;
    x = 0;
    x = 0;
  }
 
    
    
    

  if (level != 0){        
    if (x2 < -20 || x< -20) {
      level=level-1;
      x2 = 1420;
      x2 = 1420;
      x = 1420;
      x = 1420;
    }
  }
  if (key =='k') {
  }

  if (level ==0) {
    //level 0
    background(0, 0, 70);
    //maan en grond
    ellipse(5, 5, 100, 100);
    fill(118, 59, 46);
    rect(0, 800, 2000, 20000);
    //eind level 0
  }

  if (level == 1) {
    //level 1
    background(0, 0, 0);  
    //maan en grond
    ellipse(5, 5, 100, 100);
    fill(118, 59, 46);
    rect(0, 800, 2000, 20000);
    fill(140, 66, 2);
    rect(50, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(60, 300, 200, 200);
    fill(140, 66, 2);
    rect(130, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(140, 300, 200, 200);
    fill(140, 66, 2);
    rect(210, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(220, 300, 200, 200);
    fill(140, 66, 2);
    rect(290, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(290, 300, 200, 200);
    fill(140, 66, 2);
    rect(370, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(380, 300, 200, 200);
    fill(140, 66, 2);
    rect(450, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(460, 300, 200, 200);
    fill(140, 66, 2);
    rect(530, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(540, 300, 200, 200);
    fill(140, 66, 2);
    rect(610, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(620, 300, 200, 200);
    fill(140, 66, 2);
    rect(680, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(690, 300, 200, 200);
    fill(140, 66, 2);
    rect(760, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(770, 300, 200, 200);
    fill(140, 66, 2);
    rect(840, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(850, 300, 200, 200);
    fill(140, 66, 2);
    rect(930, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(940, 300, 200, 200);
    fill(140, 66, 2);
    rect(1000, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(1000, 300, 200, 200);
    fill(140, 66, 2);
    rect(1100, 300, 60, 500);
    fill(39, 250, 8);
    ellipse(1100, 300, 200, 200);
    //eind level 1
  }
  if (level ==2) {
    //level 2
    background(0, 0, 70);
    //maan en grond
    ellipse(5, 5, 100, 100);
    fill(118, 59, 46);
    rect(0, 800, 2000, 20000);
    fill(106, 83, 9);
    rect(1220, 600, 600, 600);
    fill(255, 84, 36);
    triangle(1220, 600, 1600, 600, 1410, 400);
    fill(64, 26, 1);
    rect(1500, 690, 70, 110);
    //eind level 2
  }
  if (level ==3) {
    //level 3
    background(129, 108, 3);
    fill(129, 108, 3);
    rect(0, 800, 2000, 20000);
    fill(64, 26, 1);
    rect(1500, 690, 70, 110);
    fill(64, 26, 1);
    rect(0, 690, 70, 110);                                                                                                                                                    //(CONTROL)'I');
    fill(64, 26, 1);
    rect(100, 690, 100, 100);
    fill(64, 26, 1);
    rect(100, 790, 10, 10);
    rect(190, 790, 10, 10);

    image(plaatje, 112, 500 );

    if (key == 'w') {
    }
    //eind level 3
  }
  if (level ==4) {
    //level 4
    background(222, 222, 222);
    fill(122, 122, 122);
    rect(0, 800, 2000, 20000);
    image(plaatje2, 1500, 699);
    image(plaatje3, 0, 0);      
    //eind level 4
  }
  if (level ==5) {
    //level 5
    background(0, 0, 70);
    //maan en grond
    ellipse(5, 5, 100, 100);
    x3 =x3 +1;
    x4 =x4 +1;
    x5 =x5 +1;
    fill(118, 59, 46);
    rect(0, 800, 2000, 20000);
    image(plaatje4, 0, 0);
    poppetje = poppetje + 1;
    if (poppetje < 20) {
      // laat eerste plaatje zien
      image(plaatje5, x5, y5);
    } else if (poppetje < 40)
    {
      //laat andere plaatje zien
      image(plaatje6, x3, y3);
    } else
    {
      image(plaatje7, x4, y4);
    }
    if (poppetje ==60)
    {
      poppetje = 0;
    }
  } //eind level 5
  if (level ==6) {
    //level6
    background(0, 0, 70);
    //maan en grond
    ellipse(5, 5, 100, 100);
    fill(118, 59, 46);
    rect(0, 800, 2000, 20000);
    fill(106, 83, 9);
    x3 =x3 +1;
    x4 =x4 +1;
    x5 =x5 +1;
    fill(118, 59, 46);
    rect(0, 800, 2000, 20000);
    poppetje = poppetje + 1;
    if (poppetje < 20) {
      // laat eerste plaatje zien
      image(plaatje5, x5, y5);
    } else if (poppetje < 40)
    {
      //laat andere plaatje zien
      image(plaatje6, x3, y3);
    } else
    {
      image(plaatje7, x4, y4);
    }
    if (poppetje ==60)
    {
      poppetje = 0;
    }
    
 

}
  //de zombie
  fill(41, 196, 76);
  rect(x, y+ 710, 30, 60);
  rect(x, y+ 710, 30, 60); 
  line(x, y+ 715, x, y+ 712);
  line(x, y+ 800, x, y+ 735);
  rect(x, y+ 710, 30, 60);
  ellipse(x+15, y+ 700, 30, 30);
  fill(120, 120, 120);

  //de zombie 2
  fill(100, 196, 76);
  rect(x2+85, y2+ 710, 30, 60);
  rect(x2+85, y2+ 710, 30, 60);
  line(x2+110, y2+ 715, x2+ 190, y2+ 712);
  line(x2+100, y2+ 800, x2+ 110, y2+ 735);
  rect(x2+85, y2+ 710, 30, 60);
  ellipse(x2+100, y2+ 700, 30, 30);
  fill(120, 120, 120);
  textSize(32);
  text("gemaakt door AIK EN JOB de donkere nacht!", x6, 100);

  if (key == 's' ) {
  }












































































































































































































































































































































































































































































































































































































































































































































































                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    if (key == 'X' ) {                      

    x2=x2 +100;
  }
}