float xe1 = 0;
float xe2 = 0;
float xe3 = 0;
float xe4 = 0;
float xe5 = 0;
float ye1 = 0;
float ye2 = 0;
float ye3 = 0;
float ye4 = 0;
float ye5 = 0;
void setup()
{
  fullScreen();
  ye1 = random(height);
  ye2 = random(height);
  ye3 = random(height);
  ye4 = random(height);
  ye5 = random(height);
}
void draw()
{
  background(255);
  ellipse(xe1,ye1,100,100);
  ellipse(xe2,ye2,100,100);
  ellipse(xe3,ye3,100,100);
  ellipse(xe4,ye4,100,100);
  ellipse(xe5,ye5,100,100);
  xe1+=20;
  xe2+=25;
  xe3+=30;
  xe4+=35;
  xe5+=40;
  /*ye1+=random(-12,12);
  ye2+=random(-12,12);
  ye3+=random(-12,12);
  ye4+=random(-12,12);
  ye5+=random(-12,12);*/
  if(xe1 > width){xe1=0;ye1 = random(height);}
  if(xe2 > width){xe2=0;ye2 = random(height);}
  if(xe3 > width){xe3=0;ye3 = random(height);}
  if(xe4 > width){xe4=0;ye4 = random(height);}
  if(xe5 > width){xe5=0;ye5 = random(height);}
  if(xe1==mouseX && ye1==mouseY){exit();}
}