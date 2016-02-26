size(842,595);

background(0,255,0);


for(int i = 0;i<1000 ; i = i+100){
  fill(255,100,0);
  ellipse(i,400,400,300);
}

for(int i = 0;i<1000 ; i = i+100){
  fill(0,200,255);
  ellipse(i,100,400,300);
}

save("JonahPoster0.png");