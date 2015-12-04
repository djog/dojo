float zichtbaarKantje = 0;
color[] vlakje = {color(255,255,255),color(255,255,255),color(255,255,255),color(255,255,255),  
color(255,0,0),color(255,0,0),color(255,0,0),color(255,0,0),
color(0,255,0),color(0,255,0),color(0,255,0),color(0,255,0),
color(0,0,255),color(0,0,255),color(0,0,255),color(0,0,255),
color(250,255,15),color(250,255,15),color(250,255,15),color(250,255,15),
color(255,120,15),color(255,120,15),color(255,120,15),color(255,120,15)
};


void setup(){
size(500,500);
}

void draw(){
  if(zichtbaarKantje == 0){
fill(vlakje[0]);
rect(200,200,20,20);
fill(vlakje[1]);
rect(200,220,20,20);
fill(vlakje[2]);
rect(220,200,20,20);
fill(vlakje[3]);
rect(220,220,20,20);
  }
}