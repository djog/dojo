PImage plaatje2;
PImage plaatje;
float x6=0;
//float x6 = 0;

void setup() {
  size(2000, 400);
  plaatje =loadImage("huisnummer18.png");
  plaatje2 =loadImage("ferrari.png");
}

void draw() { 









  x6 =x6 +1;
  background(107, 226, 229);
  // beeldcsherm

  //zon
  { 
    fill(236, 245, 5);
    ellipse(250, 59, 200, 120);
  }


  //het huis


  fill(103, 53, 39);
  rect(900, 200, 250, 300);
  //het raam
  fill(26, 20, 19);
  rect(900, 280, 50, 40);

  { // de deur
    fill(103, 96, 39);
    rect(1075, 300, 75, 330);        
    //schoorsteen
    fill(121, 85, 31);
    rect(1069, 80, 60, 120);
  }


  //gras


  { 
    fill(10, 242, 77);
    rect(0, 380, 900, 1000);
  }


  //2e deel gras


  rect(1150, 380, 900, 1000);


  //boom
  fill(144, 124, 44);
  rect(600, 200, 100, 200);
  //boom2 
  //fill(
  rect(350, 200, 100, 200);
  fill(10, 242, 62);
  ellipse(400, 160, 180, 80);



  //bladeren
  { 
    fill(10, 242, 62);
    ellipse(644, 160, 180, 80);
  }
  
  //TEKST JOB
  { 
    textSize(32);

    text("gemaakt door job het huis", x6, 100);
  } image(plaatje, 1000, 250);
    image(plaatje2,40,300);
}