void setup()
{
  size(300,300);  
}

void draw() 
{
  //         
  //    a    
  //   / \   
  //  e---b  
  //  |\ /|  
  //  | X |  
  //  |/ \|  
  //  d---c  
  //
  // a: (150, 50)
  // b: (200,100)
  // c: (200,200)
  // d: (100,200)
  // e: (100,100)

  //Van a naar b
  line(150,50,200,100);
  //Van b naar c
  line(200,100,200,200);
  //Van c naar d
  line(200,200,100,200);
  //Van d naar e
  line(100,200,100,100);
  //Van e naar a
  line(100,100,150,50);
  //Van b naar d
  line(200,100,100,200);
  //Van b naar e
  line(200,100,100,100);
  //Van c naar e
  line(200,200,100,100);
}