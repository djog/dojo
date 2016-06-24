void setup() {
  size(500,500);
  background(96,129,120);
}


 void draw(){
   noStroke();

for (int i = 0; i <2 ; i = i+1){
  fill(39,162,167,200);
  ellipse(random(500),random(500),10,10);
  fill(65,153,157,210);
  ellipse(random(500),random(500),10,10);
  fill(116,14,234,210);
  ellipse(random(500),random(500),10,10);
  fill(14,234,177,210);
  ellipse(random(500),random(500),10,10);


}
 }