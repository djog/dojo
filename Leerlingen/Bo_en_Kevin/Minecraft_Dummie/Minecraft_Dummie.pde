  float W = 650;
  float S = 480;
  float X = 290;
  float Y =230;
  String chat = " ";
  boolean ready = true;
  boolean jump = false;
  boolean spring = false;
  void setup()
{
  size(1000,1000);
}
  void draw()
{
  background(255,255,255);
  fill(0,195,255);
  rect(0,0,1000,500);
  fill(0,200,0);
  rect(0,500,1000,500);
  fill(150,75,0);
  rect(700,250,100,400);
  
  fill(246,255,0);
  ellipse(200,100,150,150);
  
  fill(0,200,0);
  ellipse(700,245,100,100);
  ellipse(800,245,100,100);
  ellipse(603,220,100,100);
  ellipse(897,220,100,100);
  ellipse(750,200,100,100);
  ellipse(660,170,100,100);
  ellipse(840,170,100,100);
  ellipse(780,125,100,100);
  ellipse(720,125,100,100);
  
  fill(255,255,255);
  ellipse(200,150,75,75);
  ellipse(150,150,75,75);
  ellipse(100,150,75,75);
  ellipse(175,130,75,75);
  ellipse(125,130,75,75);
  ellipse(150,120,75,75);
  ellipse(175,160,75,75);
  ellipse(125,160,75,75);;
  
  fill(232,201,128);
  rect(X,Y,150,150);
  
  fill(82,39,2);
  rect(X-0,Y+0,150,15);
  rect(X-0,Y+15,10,10);
  rect(X+140,Y+15,10,10);
  
  fill(255,0,0);
  rect(X-0,Y+100,150,200);
  
  fill(232,201,128);
  rect(X-50,Y+100,50,200);
  rect(X+150,Y+100,50,200);
  
  fill(0,0,300);
  rect(X-0,Y+300,75,200);
  rect(X+75,Y+300,75,200);
  
  fill(0);
  rect(X+52,Y+75,50,10);
  
  fill(126);
  line(X-35,Y+275,X-35,Y+300);
  
  line(X-25,Y+275,X-25,Y+300);
  
  line(X-15,Y+275,X-15,Y+300);
  
  line(X+165,Y+275,X+165,Y+300);
  
  line(X+175,Y+275,X+175,Y+300);
  
  line(X+185,Y+275,X+185,Y+300);
  
  fill(82,39,2);
  rect(X+35,Y+30,25,15);
  rect(X+95,Y+30,25,15);
  
  fill(255,0,0);
  rect(X-50,Y+100,50,50);
  
  fill(255,0,0);
  rect(X+150,Y+100,50,50);
  
  fill(255,255,255);
  rect(X+42.5,Y+32.5,10,10);
  rect(X+102.5,Y+32,10,10);
  rect(W,S,200,150);
  rect(W-100,S+25,100,100);
  rect(W+0,S+150,50,100);
  rect(W+150,S+150,50,100);

  fill(0);
  rect(X+42,Y+70,10,10);
  fill(0);
  rect(X+102,Y+70,10,10);

  fill(0);
  rect(W-75,S+50,15,10);
  rect(W-35,S+50,15,10);
  
  fill(0);
  rect(W-72,S+95,50,10);

  text(chat,10,20);

  if(keyPressed){
  if(ready){
  chat = chat +key;
  ready = false;
  }
  textSize(25);
  
  
  
    if(keyCode == LEFT){
      X = X - 5;
    }
      if(keyCode == RIGHT){
      X = X + 5;
    }
    if(keyCode == UP){
      Y = Y - 5;
    }
    if(keyCode == DOWN){
      Y = Y + 5;
    }

if(key == ' '){
  jump = true;
}
  
}
if(!keyPressed){
  ready = true;
}


    if(keyCode == CONTROL){
      W = W - 1;
    }
      if(keyCode == ALT){
      W = W + 1;

    if(keyCode == SHIFT){
      S = S + 1;
    }
}

if(jump){  
  Y = Y - 10;
  if(Y <= 100) {jump = false;}
}

if(!jump){
  if(Y < 230) { Y = Y + 10;}
}

}