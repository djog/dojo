String l = ""; 
int time = 0;
void setup()
{
  size(1280, 100);
  textSize(20);
  fill(255);
  strokeWeight(5);
}

void draw()
{ 
  background(0,255); 
  float cursorPos = textWidth(l);
  stroke(random(255), random(255), random(255));
  line(cursorPos, 0, cursorPos, 100);
  text(l, 0, 50);
}

void keyPressed() {
  
    
    if (key == 't') {
      if (time == 0){
        delay(100);
        time++;
      }}
         if (key == 'i') {
      if (time == 1){
        delay(100);
        time++;
      }}
         if (key == 'm') {
      if (time == 2){
        delay(100);
        time++;
      }}
         if (key == 'e') {
      if (time == 3){
        delay(100);
        time++;
      }}
      if(time == 4){
        delay(100);
      println(year(), ":", month(), ":", day(), ":", hour(), ":", minute(), ":", second());
      time = 0;
    }
    if(key != 't' && key != 'i'&& key != 'm'&& key != 'e'){
    if(time >= 1){
     time--; 
    }
    }

    if (key == BACKSPACE) {
      if (l.length() > 0) {
        l = l.substring(0, l.length()-1);

      }
    } else if  (textWidth(l+key) < width && key != CODED) {
      l = l + key;
    }  
    if (keyCode == ENTER) {
      println(l);
      l = "";  //    =^¡€#¢∞§¶•ªºº–––≠ //<>//
      delay(10);
    }  //          =^>^=                                      t
  

  }