float kr = 1;
float kg = 0;
float kb = 0;
float jwp_r = 255;
float jwp_b = 0;
float jwp_g = 0;
float jwp_c = 1;
void setup()
{
  size(400,400);
}
void draw()
{
  line(100,0,100,400);
  line(200,0,200,400);
  line(300,0,300,400);
  line(400,0,400,400);
  line(0,100,400,100);
  line(0,200,400,200);
  line(0,300,400,300);
  line(0,400,400,400);
  fill(jwp_r,jwp_b,jwp_g);
  rect(200,200,100,100);
  if(jwp_r == 255) {jwp_c = 1;}
  if(jwp_c == 1) {jwp_r-=1; jwp_b+=1;}
  if(jwp_b == 255) {jwp_c = 2;}
  if(jwp_c == 2) {jwp_b-=1; jwp_g+=1;}
  if(jwp_g == 255) {jwp_c = 3;}
  if(jwp_c == 3) {jwp_g-=1; jwp_r+=1;}
}