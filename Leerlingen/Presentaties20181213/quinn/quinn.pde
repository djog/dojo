int OFF_MAX = 300;

void setup() {
  size(800,800, P3D);
}

void draw()
{
  background(0);
  translate(width / 2, height / 2, -OFF_MAX);
  rotateX(frameCount * .01);
  rotateY(frameCount * .01);
  rotateY(frameCount * .01);
  
  for (int xo = -OFF_MAX; xo <= OFF_MAX; xo += 50) {
    for (int yo = -OFF_MAX; yo <= OFF_MAX; yo += 50) {
      for (int zo = -OFF_MAX; zo <= OFF_MAX; zo += 50) {
        pushMatrix();
        translate(xo, yo, zo);
        rotateX(frameCount * .04);
        rotateY(frameCount * .04);
        rotateY(frameCount * .04);
        fill(colorFromOffset(xo), colorFromOffset(yo), colorFromOffset(zo));
        box(30);
        popMatrix();
      }
    }
  }
}

int colorFromOffset(int offset) {
  return(int) ((offset + OFF_MAX) / (2.8 * OFF_MAX) * 255);
}
