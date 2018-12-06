PImage plaatje;
float x = 400;
float y = 400;
float g = 0;
float u = 55;
void setup()
{
fullScreen();
 plaatje = loadImage("code.jpg");
}

void draw()
{
  background(0,0,0,0);
  image(plaatje, x, y, 100, 100);
  fill(#F0F511);
  textSize(25);
  text("kijk uit voor rode code",900,500);
  fill(#F52811);
  text("001101010101010100101110100(x = gevaar , gevaar)",g,200);
  text("############^^***rrrrrrrr(dood)",g,300);
  text("1110010101010101010100101011011010101010101",g,600);
  text("3% = goed 97% = slecht",g,900);
  text("100:)",100,u);
  text("hack",400,u); 
  text("de dood is nabij",600,u);
  text("text(wilt u €3000000,als iemand drukt start zelfvernietteging)",800,u);
  text("------------->>>>>>>>>>>>",g,u); //EE
  text("->12549098<-",g,u);
  text("je bent niet veilig",1800,u);
  text("r.o.b.",500,u);
  text("@#$%",250,u);
  fill(0,255,0);
  g = g + 5;
  u = u + 5;

if( u > height) u = 0;
if( g > width) g = 0;
if( y > height) y = 0;
if( x > width) x = 0;
if(keyPressed)
{
  if(key == 'd') x = x + 6;
  if(key == 'a') x = x - 6;
  if(key == 'w') y = y - 6;
  if(key == 's') y = y + 6;  
 }
}
