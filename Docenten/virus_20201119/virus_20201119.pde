float x = 320.0;
float y = 200.0;

float macrophage_x = 160.0;
float macrophage_y = 100.0;

float cell_xs[];
float cell_ys[];
final int n_cells = 10;

PImage macrofaag;

void setup()
{
  size(640, 400);
  cell_xs = new float[n_cells];
  cell_ys = new float[n_cells];
  macrofaag = loadImage("macrofaag.jpeg");
  
}

void draw()
{
  background(255, 255, 228);
  stroke(0, 0, 0);
  fill(128, 128, 128);
  ellipse(x, y, 20, 20);
  
  stroke(0, 0, 0);
  fill(128, 255, 128);
  image(macrofaag, macrophage_x, macrophage_y);
  image(macrofaag, macrophage_x + width, macrophage_y);
  image(macrofaag, macrophage_x - width, macrophage_y);
  x += random(0.0, 2.0);
  y += random(-1.0, 1.0);
  if (x > width) x -= width;
  macrophage_x += random(0.0, 2.0);
  macrophage_y += random(-1.0, 1.0);
  if (macrophage_x > width) macrophage_x -= width;
  
  //macrophage_y += y > macrophage_y ? 1.0 : -1.0;
  //macrophage_x += x > macrophage_x ? 1.0 : -1.0;
  //macrophage_y += y > macrophage_y ? 1.0 : -1.0;
}
