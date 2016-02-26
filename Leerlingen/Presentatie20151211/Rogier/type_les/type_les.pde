int score = 0;

char letter;
char[] alphabet = {'a', 'b', 'c', 'd', 'e','f','g','h','i', 'j','k', 'l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};
int nummer = 5;
float breedte =1000;

void setup(){
  
size(1000,750);
textSize(82);
letter = willekeurigeLetter();
}
void draw (){
background(0,0,350);
if (breedte<=0){
  background (255,0,0);
}
  rect(0,20,breedte,20);
if (keyPressed){
  if (key == letter){
    if(key == score){
      text(score,100,100);
      
    }
    breedte = 1000;
    letter = willekeurigeLetter();
    score = score + 1;
  }
}
  text(letter,width/2,height/2);
 //text(alphabet[(int)random(alphabet.length)], width/2, height/2);
breedte = breedte - 4;
}

char willekeurigeLetter(){
  return alphabet[(int)random(alphabet.length)];
}