float zichtbaarKantje = 0;
color[] vlakje = {color(255,255,255),color(255,255,255),color(255,255,255),color(255,255,255),  
color(255,0,0),color(255,0,0),color(255,0,0),color(255,0,0),
color(0,255,0),color(0,255,0),color(0,255,0),color(0,255,0),
color(0,0,255),color(0,0,255),color(0,0,255),color(0,0,255),
color(250,255,15),color(250,255,15),color(250,255,15),color(250,255,15),
color(255,120,15),color(255,120,15),color(255,120,15),color(255,120,15)
};


//color x = vlakje 1
//vlakje 1 = vlakje 5
//vlAKJE 5 = X


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
if(zichtbaarKantje == 1){  
    fill(vlakje[4]);
    rect(200,200,20,20);
    fill(vlakje[5]);
    rect(200,220,20,20);
    fill(vlakje[6]);
    rect(220,200,20,20);
    fill(vlakje[7]);
    rect(220,220,20,20);
}
if(zichtbaarKantje == 2){
    fill(vlakje[8]);
    rect(200,200,20,20);
    fill(vlakje[9]);
    rect(200,220,20,20);
    fill(vlakje[10]);
    rect(220,200,20,20);
    fill(vlakje[11]);
    rect(220,220,20,20);
}
    if(zichtbaarKantje == 3){
    fill(vlakje[12]);
    rect(200,200,20,20);
    fill(vlakje[13]);
    rect(200,220,20,20);
    fill(vlakje[14]);
    rect(220,200,20,20);
    fill(vlakje[15]);
    rect(220,220,20,20);
}
if(zichtbaarKantje == 4){
    fill(vlakje[16]);
    rect(200,200,20,20);
    fill(vlakje[17]);
    rect(200,220,20,20);
    fill(vlakje[18]);
    rect(220,200,20,20);
    fill(vlakje[19]);
    rect(220,220,20,20);
}
if(zichtbaarKantje == 5){
     fill(vlakje[20]);
    rect(200,200,20,20);
    fill(vlakje[21]);
    rect(200,220,20,20);
    fill(vlakje[22]);
    rect(220,200,20,20);
    fill(vlakje[23]);
    rect(220,220,20,20); 
}    
if (keyPressed){
  if(keyCode == UP){
 vlakje[0] = vlakje [12];   
 vlakje [2] = vlakje [14];
 vlakje [8] = vlakje [0];
 vlakje [10] = vlakje [2];
 vlakje [20] = vlakje [8];
 vlakje [22] = vlakje [10];
 vlakje [12] = vlakje [20];
 vlakje [14] = vlakje [22];
}
}
if (keyPressed){
  if (keyCode == RIGHT){
     vlakje[1] = vlakje [13];   
 vlakje [3] = vlakje [15];
 vlakje [9] = vlakje [1];
 vlakje [11] = vlakje [3];
 vlakje [21] = vlakje [9];
 vlakje [23] = vlakje [11];
 vlakje [13] = vlakje [21];
vlakje [15] = vlakje [23];
  }
}
  
  
}