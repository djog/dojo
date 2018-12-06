float[] xs;
float[] ys;
int g = 255;
float[] bs;

void setup() {
  size(320, 200);
  xs = new float[g];
  ys = new float[g];
  bs = new float[g];
  for (int i=0; i<g; ++i) {
    xs[i] = width / 2;
    ys[i] = height / 2;
    bs[i] = i * 1;
  }
}

void draw() {
  for (int i=0; i<g; ++i) {
    xs[i] += random(-10, 10);
    ys[i] += random(-10, 10);
    fill(0, 0, bs[i]);
    stroke(255);
    ellipse(xs[i], ys[i], 10, 10);
  }
}
