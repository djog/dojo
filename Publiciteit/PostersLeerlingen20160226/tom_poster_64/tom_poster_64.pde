size(842,595);
background(134,77,233);
for(int i=0; i<595; i = i+5){
  
  stroke(154, i, i);

  line(0,i, 842, 595-i);
  
} 

for(int j=0; j<842; j = j+5){
  stroke(182, 67, 5);
  line(j,0, 595, 842-j);




}

save("TomPoster0.png");