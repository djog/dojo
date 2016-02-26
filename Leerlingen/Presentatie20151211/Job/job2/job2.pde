void setup(){
size(1000,1000);
}
void draw(){
background(255);
line(200,200,mouseX,mouseY);
line(200,450,100,500);
line(300,450,350,500);
line(300,200,400,300);

fill(0,0,255,255);
rect(200,200,mouseX,mouseY);

fill(0,0,255,255);
ellipse(250,100,200,200);

fill(255,120,0,255);

rect(500,100,400,250,50);
fill(0,120,250,255);
ellipse(550,400,200,200);
fill(0,125,0,255);
ellipse(850,400,200,200);
fill(128);
ellipse(random(600,800),random(60,80),90,25);


}