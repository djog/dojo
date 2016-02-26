size(842,595);

background(50,98,61);

for (int i = 100; i < 800; i = i+5) {
  for (int j = 0; j < 800; j = j+5) {
    stroke(250,10,0);
    point(i, j);
    
  }
}

for(int j=0; j<842; j = j+10){
  noStroke();
  fill(34, 104, 30);
  rect(j, 0, 5, 595);
}

for(int i=0; i<595; i = i+5){
  stroke(19, 152, 86);
  line(0, i, 842, 595-i);
}



for(int j=0; j<842; j = j+5){
  stroke(99, 152,19);
  line(j,0, 595, 842-j);
}