class Rectangle {
  public float xb;
  public float yb;
  public float xe;
  public float ye;
}


boolean check_if_two_rectangles_hit(Rectangle a, Rectangle b) {
  float bx[] = {b.xb, b.xe, b.xb, b.xe};
  float by[] = {b.yb, b.yb, b.ye, b.ye};
  for (int i = 0; i < 4; ++i) {
    if ( a.xb <= bx[i] && bx[i] <= a.xe &&
      a.yb <= by[i] && by[i] <= a.ye) {
      return true;
    }
  }
  return false;
}


class Rocket {
  PImage photo;
  private PImage plaatje;
  public float x;
  public float y;
  public int direction;
  public int bulletWait;
  public int bulletsLeft;
  public int timer;
  public int levens;
  public boolean firePressed;

  public Rocket(float x, float y) {
    photo = loadImage("held-alpha-klein.png");
    this.x = x;
    this.y = y - 70;
    bulletsLeft = 20;
    timer = 0;
  }

  public Rectangle getRect() {
    Rectangle r = new Rectangle();
    r.xb = x - 36;
    r.yb = y - 30;
    r.xe = x + 36;
    r.ye = y + 40;
    return r;
  }

  public void levens() {
    levens = 3;
    println(levens);
  }
  private boolean canFire() {
    return (bulletsLeft > 0 && !firePressed && bulletWait == 0);
  }               

  private void fire() {
    bullets.add(new Bullet(rocket.x, rocket.y - 80, -7.5, 255, 0, 0));
    bulletsLeft -= 1;
    this.bulletWait = 1;
  }

  public void pressFire() {
    if (rocket.canFire()) {
      rocket.fire();
      this.firePressed = true;
    }
  }
  public void releaseFire() {
    this.firePressed = false;
  }

  public void setDirection(int direction) {
    this.direction = direction;
  }

  public void update() {   
    imageMode(CENTER);
    image(photo, x, y, 72, 80);
    x += 7 * direction;
    if (this.bulletWait > 0) {
      this.bulletWait -= 1;
    }

    timer++;
    if ((timer % 100) == 0) {
      bulletsLeft += 100000000;
    }
  }

  public boolean check_if_hit(Rectangle r) {
    return check_if_two_rectangles_hit(this.getRect(), r);
  }

  public void check_of_schip_is_geraakt() {
    for (int i = bullets.bullets.size() - 1; i >= 0; --i) {
      
      if (i < 0) {
        println("Fout 4: i is kleiner dan nul");
      }
      if (i >= bullets.bullets.size()) {
        println("Fout 5: i is groter of gelijk aan het aantal kogels");
      }
      
      Bullet b = bullets.bullets.get(i);
      if (b.speed > 0 && check_if_hit(b.getRect())) {
        levens = levens - 1;

        if (i >= bullets.bullets.size()) {
          println("Fout 6: i is groter of gelijk aan het aantal kogels");
        }

        bullets.bullets.remove(i);
        if (levens <= 0) {

          if (i >= bullets.bullets.size()) {
            println("Fout 7: i is groter of gelijk aan het aantal kogels");
          }

          bullets.bullets.remove(i);
          plaatje = loadImage("explosie-klein.png");
          
          println("Doei!");
          exit();
          return;
        }
      }
    }
  }
}


class Bullet {
  public float x;
  public float y;
  public float speed;
  public float rood_heid;
  public float groen_heid;
  public float blue_heid;

  public Bullet(float x, float y, float speed, float rood_heid, float groen_heid, float blue_heid) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.rood_heid = rood_heid;
    this.groen_heid = groen_heid;
    this.blue_heid = blue_heid;
  }
  public String toString() {
    return "Bullet(" + nf(x) + ", " + nf(y) + ")";
  }

  public Rectangle getRect() {
    Rectangle r = new Rectangle();
    r.xb = x - 2;
    r.yb = y;
    r.xe = x + 4;
    r.ye = y + 20;
    return r;
  }

  public boolean update() {
    stroke(rood_heid, groen_heid, blue_heid);
    fill(rood_heid, groen_heid, blue_heid);
    rect(x, y, 2, 20);
    y += speed;
    if (y < 0) {
      return false;
    }
    return true;
  }
}


class Bullets {
  private ArrayList<Bullet> bullets;

  public Bullets() {
    bullets = new ArrayList<Bullet>();
  }

  public void add(Bullet bullet) {
    bullets.add(bullet);
  }

  public void update() {
    for (int i = bullets.size() - 1; i >= 0; --i) {
      if (!bullets.get(i).update()) {
        bullets.remove(i);
      }
    }
  }
}


class Tegenstander {
  private PImage plaatje;
  private float x;  
  private float y;
  private float speed;
  private float accel;
  private boolean geraakt;
  private int explosionSize = 120;

  public Tegenstander(float x, float y) {
    plaatje = loadImage("tegenstander-alpha-klein.png");
    this.x = x;
    this.y = y;
    this.speed = random(-5, 5);
    this.accel = 0;
    geraakt = false;
  }

  public Rectangle getRect() {
    Rectangle r = new Rectangle();
    r.xb = x - 40;
    r.yb = y - 25;
    r.xe = x + 40;
    r.ye = y + 25;
    return r;
  }

  public void update() {
    if (geraakt) {
      imageMode(CENTER);
      image(plaatje, x, y, explosionSize, explosionSize);
      explosionSize -= 10;
      return;
    }

    imageMode(CENTER);
    image(plaatje, x, y, 80, 72);

    x += speed;
    if (x >= width) {
      x = 0;
    } else if (x <= 0) {
      x = width;
    }

    final float maxspeed = 20;
    speed += accel;
    speed = min(maxspeed, speed);
    speed = max(-maxspeed, speed);

    final float maxaccel = 0.5;
    accel += random(-0.01, 0.01);
    accel = min(maxaccel, accel);
    accel = max(-maxaccel, accel);

    if ((int)random(0, 50) == 0) {
      fill(0, 255, 0);
      bullets.add(new Bullet(x, y + 100, 7.5, 0, 200, 0));
    }
  }

  public boolean isDestroyed() {
    return geraakt && explosionSize <= 0;
  }

  public boolean check_if_hit(Rectangle r) {
    return check_if_two_rectangles_hit(this.getRect(), r);
  }

  public void check_of_schip_is_geraakt() {
    if (geraakt)
      return;
    for (int i = bullets.bullets.size() - 1; i >= 0; --i) {
      
      if (i < 0) {
        println("Fout 1: i is kleiner dan nul!");
      }
      if (i >= bullets.bullets.size()) {
        println("Fout 2: i is groter of gelijk aan het aantal kogels!");
      }
      
      Bullet b = bullets.bullets.get(i);
      
      if (b.speed < 0 && check_if_hit(b.getRect())) {

        if (i >= bullets.bullets.size()) {
          println("Fout 3: i is groter of gelijk aan het aantal kogels!");
        }

        bullets.bullets.remove(i);
        geraakt = true;
        plaatje = loadImage("explosie-klein.png");
        return;
      }
    }
  }
}


class Tegenstanders {
  private ArrayList<Tegenstander> list;

  public Tegenstanders(float w, float y, int maxtegenstanders) {
    list = new ArrayList<Tegenstander>();
    for (int i = (int)w / 5; maxtegenstanders-- > 0 && i < 4 * w / 5; i += 49) {
      list.add(new Tegenstander(i, y + (i % 3) * 150));
    }
  }

  public void update() {
    removeLost();

    for (int i = 0; i < list.size(); i++) {
      Tegenstander t = list.get(i);
      t.update();
    }
  }
  void levels() {
  }
  private void removeLost() {
    for (int i = list.size() - 1; i >= 0; --i) {
      Tegenstander t = list.get(i);
      if (t.isDestroyed()) {
        list.remove(i);
      }
    }
  }

  public void check_of_schip_is_geraakt() {
    for (int i = list.size() - 1; i >= 0; --i) {
      Tegenstander t = list.get(i);
      t.check_of_schip_is_geraakt();
    }
  }
  public int size() {
    return list.size();
  }
}


Rocket rocket = null;
Tegenstanders tegenstanders = null;
Bullets bullets = null;
int level = 1;
int level1 = 2;

void setup()
{
  fullScreen(); 
  rocket = new Rocket(width / 2, height - 100);
  bullets = new Bullets();
  start_level(level);
}

float kogels_naar_hoek(float aantal) {
  if (aantal > 20)
    return 0;
  return (20 - aantal) / 20 * PI;
}

void start_level(int level) {
  int aantal_tegenstanders = 0;
  switch (level) {
  case 1:
    aantal_tegenstanders = 1;
    level1 = 2;
    break;
  case 2:
    aantal_tegenstanders = 5;
    level1 = 10;
    break;
  case 4:
    aantal_tegenstanders = 50;
    level1 = 100;
    break;
  case 5:
    exit();
    break;
  default:
    aantal_tegenstanders = 25;
    level1 = 50;
  }
  tegenstanders = new Tegenstanders(width, 200, aantal_tegenstanders);
}

void teken_hud(float aantal) {
  final float lengte = 100;
  float hoek = kogels_naar_hoek(aantal);
  float a = lengte * cos(hoek);
  float o = lengte * sin(hoek);
  float x0 = width / 2;
  float y0 = height - 30;
  noFill();
  ellipse(width / 2, height - 30, 200, 200);
  float x1 = x0 + a;
  float y1 = y0 - o;
  stroke(0, 0, 255);
  line(x0, y0, x1, y1);
  println(x0 + " , " + y0 + " -> " + x1 + " , " + y1);
}

void draw()
{
  background(255);
  tegenstanders.update();
  rocket.update();
  bullets.update();
  tegenstanders.check_of_schip_is_geraakt();
  rocket.check_of_schip_is_geraakt();
  textSize(20);
  //text(tegenstanders.size(), 240, 200);
  fill(0);
  text("enemies = " + tegenstanders.size(), 130, 200);
  text("bullets = " + rocket.bulletsLeft, 130, 250);
  //text("hudhoek = " + kogels_naar_hoek(rocket.bulletsLeft), 130, 300);
  teken_hud(rocket.bulletsLeft);
  if (tegenstanders.size() <= 0) {
    ++level;
    start_level(level);
    //textSize(width / 7);
    //text("gewonnen", width / 8, height / 2);
  }
}

void keyPressed() {
  int key_ = (int)key;
  if (key == CODED)
    key_ = keyCode;
  if (key_ == LEFT) rocket.setDirection(-1);
  else if (key_ == RIGHT) rocket.setDirection(+1);
  else if (key_ == UP) rocket.pressFire();
  if (keyPressed) {
    if (key == 'q') {
      exit();
    }
  }
}

void keyReleased() {
  int key_ = (int)key;
  if (key == CODED)
    key_ = keyCode;
  if (key_ == LEFT || key_ == RIGHT) rocket.setDirection(0);
  else if (key_ == UP) rocket.releaseFire();
}
