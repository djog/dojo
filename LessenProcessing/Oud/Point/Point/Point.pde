void setup()
{
  size(10,10);  
}

void draw() 
{
  //   0123456789
  // 0 ..........
  // 1 ..XXXXXX..
  // 2 .X......X.
  // 3 .X.X..X.X.
  // 4 .X......X.
  // 5 .X.X.X..X.
  // 6 .X..X...X.
  // 7 .X......X.
  // 8 ..XXXXXX..
  // 9 ..........

  // Ogen
  point(3,3);
  point(6,3);

  // Mond
  point(3,5);
  point(4,6);
  point(5,5);
  
  // Bovenkant hoofd
  point(2,1);  
  point(3,1);  
  point(4,1);  
  point(5,1);  
  point(6,1);  
  point(7,1);  

  // Rechterkant hoofd
  point(8,2);  
  point(8,3);  
  point(8,4);  
  point(8,5);  
  point(8,6);  
  point(8,7);  

  // Onderkant hoofd
  point(2,8);  
  point(3,8);  
  point(4,8);  
  point(5,8);  
  point(6,8);  
  point(7,8);  

  // Linkerkant hoofd
  point(1,2);  
  point(1,3);  
  point(1,4);  
  point(1,5);  
  point(1,6);  
  point(1,7);  
}