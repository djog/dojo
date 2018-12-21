float[] seb_xs;
float[] seb_ys;
int seb_g = 255;
float[] seb_bs;
float seb_x;
float seb_y;

void setup() {
  size(400, 400);
  seb_xs = new float[seb_g];
  seb_ys = new float[seb_g];
  seb_bs = new float[seb_g];
  for (int i=0; i<seb_g; ++i) {
    seb_xs[i] = 150;
    seb_ys[i] = 350;
    seb_bs[i] = i * 1;
    seb_y = height;
    seb_x = width;
  }
}

void draw() {
  for (int i=0; i<seb_g; ++i) {
    seb_xs[i] += random(-10, 10);
    seb_ys[i] += random(-10, 10);
    fill(0, 0, seb_bs[i]);
    stroke(255);
    ellipse(seb_xs[i], seb_ys[i], 10, 10);
    if (seb_xs[i] > 200) seb_xs[i] = 190;
    if (seb_xs[i] < 100) seb_xs[i] = 110;
    if (seb_ys[i] < 300)seb_ys[i] = 310;
    if (seb_ys[i] > 400)seb_ys[i] = 390;
  }
}