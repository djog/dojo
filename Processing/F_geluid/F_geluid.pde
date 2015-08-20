import processing.sound.*;

SoundFile music;
SoundFile effect;
boolean playing = false;

void setup(){
  music = new SoundFile(this,"music.mp3");
  effect = new SoundFile(this,"effect.ogg");
  size(500,500);
  background(0,128,0);
}

void draw(){
  
}

void keyPressed(){
  if(playing){
    music.stop();
    playing = false;
  }
  else{
    music.loop();
    playing = true;
  }
}

void mousePressed(){
  effect.play();
}