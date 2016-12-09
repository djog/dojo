import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

void setup() {

  
Minim minim;
AudioPlayer music;

minim = new Minim(this);
music = minim.loadFile("bensound-popdance.mp3", 2048);
music.loop();
size(1200, 800);
fill(5,255,190);
rect(150,400,200,600);
fill(255,5,239);
ellipse(250,480,100,100);
fill(5,215,255);
ellipse(250,650,100,100);
fill(41,5,255);
ellipse(250,480,50,50);
fill(25,255,5);
ellipse(250,650,50,50);
fill(255,5,197);
rect(350,400,200,600);
fill(254,255,5);
ellipse(450,480,100,100);
fill(8,255,5);
ellipse(450,650,100,100);
fill(255,126,5);
ellipse(450,650,50,50);
fill(5,15,255);
ellipse(450,480,50,50);
fill(94,142,129);
rect(550,400,200,600);
fill(255,0,196);
ellipse(650,480,100,100);
fill(124,0,95);
ellipse(650,650,100,100);
fill(98,1,75);
ellipse(650,650,50,50);
fill(1,39,98);
ellipse(650,480,50,50);
fill(82,242,15);
rect(750,400,200,600);
fill(224,0,255);
ellipse(850,480,100,100);
fill(156,0,255);
ellipse(850,480,50,50);
fill(0,142,255);
ellipse(850,650,100,100);
fill(57,87,152);
ellipse(850,650,50,50);
fill(57,234,76);
rect(350,100,200,300);
fill(57,105,234);
ellipse(450,175,100,100);
fill(17,77,237);
ellipse(450,175,50,50);
fill(3,30,100);
ellipse(450,325,100,100);
fill(11,214,178);
ellipse(450,325,50,50);
fill(255,0,0);
rect(550,100,200,300);
fill(124,15,242);
ellipse(650,325,100,100);
fill(46,3,93);
ellipse(650,325,50,50);
fill(5,144,255);
ellipse(650,175,100,100);
fill(28,255,0);
ellipse(650,175,50,50);
fill(255,0,34);
rect(525,0,75,100);
fill(255,0,179);
ellipse(565,25,40,40);
fill(255,213,0);
ellipse(565,25,20,20);
fill(33,0,255);
ellipse(565,75,40,40);
fill(255,0,89);
ellipse(565,75,20,20);

}

void draw() {}