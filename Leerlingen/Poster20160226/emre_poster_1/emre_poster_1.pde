size(842,595);
background(255);

for(int j=0; j<842; j = j+10){
  noStroke();
  fill(100, 0,200 );
  rect(j, 0, 5, 595);
  fill(255,0,0);
  ellipse(j,0,15,15);
  ellipse(j,595,15,15);
  ellipse(j,j/1.4,15,15);
  ellipse(j,595-j/1.4,15,15);
}

for(int i=0; i<595; i = i+3){
  stroke(10, 250-i, i);
  line(0, i, 842, 595-i);
    line(0, i, 832, 595-i);
}

save("EmrePoter0.png");