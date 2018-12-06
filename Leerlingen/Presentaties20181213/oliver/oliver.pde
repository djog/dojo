void setup()
{
size(100, 100);
}

void draw()
{
 background(0);
 noStroke();
 ellipse(50, 50, 80, 80);
 float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
 float m = map(minute(),0, 60, 0, TWO_PI) - HALF_PI; 
 float h = map(hour(), 0, 60, 0, TWO_PI) - HALF_PI;
 stroke(255);
 line(50, 50, cos(s)*38+50, sin(s)*38+50);
 line(50, 50, cos(m)*30+50, sin(m)*30+50);
 line(50, 50, cos(s)*25+50, sin(h)*25+50);
 println(year(),":", month(), ":", second(), ":");
}