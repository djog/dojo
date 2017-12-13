import processing.serial.*;
float a = 0;
float b = 0;
float ax = 0;
float bx = 0;
float scorel = 0;
float scorer = 0;
float y = 200;
float x = 300;
float snelheid_x = 2;
float snelheid_y = 2;
Serial serial_port;
final float player1_r = 50;
final float player2_r = 50;
void setup()
{
  size(600,400);
  serial_port = new Serial(this, Serial.list()[0], 9600);
}

void draw()
 {
  background(0,255,0);
 while (serial_port.available() > 0) 
    {
      final int spacer_value = serial_port.read();
      if (spacer_value != 0) continue; 
      if (serial_port.available() == 0) break;
      a = map(serial_port.read(), 1, 255, 0, 300);
      if (serial_port.available() == 0) break;
      b = map(serial_port.read(), 1, 255, 0, 300);
    }
   textSize(26);
    fill(0, 0, 0);
    text(""+ scorel, 225, 50); 
    text(""+ scorer, 350, 50);
    fill(255, 255, 255);
    ellipse(x,y,40,40);
    rect(20,a,30,100);
    rect(550,b,30,100);
    if (x < 20)
    {
     scorel = scorel + 1;
    }
    if (x > 580)
    {
     scorer = scorer + 1;
    }
    x = x + snelheid_x;
    if (x > 580)
    {
      snelheid_x = -2;
    }
    
    if (x < 20)
    {
      snelheid_x = 2;
    }
    //Stuiter als 
    // - de bal linksheid van de linker paddel is
    // - de bal op de hooogte van paddle is
    if (x < 70 && y > a && y < a + 100)
    {
      snelheid_x = 2;
    }
    
    //if (x > ax && ax < x + 30 && )
    //{
      
    //}
    
    if (x > 530 && y > b && y < b + 100)
    {
      snelheid_x = -2;
    }
   
    y = y + snelheid_y;
    
    if( y > 380)
    {
     snelheid_y = -2; 
    }
    if( y < 20)
    {
     snelheid_y = 2; 
    }

      
    


    
 }