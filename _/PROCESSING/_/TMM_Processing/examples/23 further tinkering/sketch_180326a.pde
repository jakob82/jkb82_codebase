Pa[] p = new Pa[75];
int limit = 75;

void setup() {
  for (int i = 0; i<p.length; i++) {
    p[i] = new Pa();
  }
  size(300, 300);
  background(0);
  frameRate(120);

  noFill();
  stroke(255);
  strokeWeight(.125);
}

void draw() {
  fill(255, 10);
  noStroke();
  rect(0, 0, width, height);
  for (int i = 0; i<p.length; i++) {
    p[i].show(i);
  }
}

class Pa {
  float x, y, vx, vy;
  public Pa() {
    x = random(width);
    y = random(height);

    float a = random(TWO_PI);
    vx = sin(a)*PI;
    vy = cos(a)*PI;
  }

  void show(int index) {
    x+=vx;
    y+= vy;
    for (int i = index+1; i<p.length; i++) {
      float d = dist(x, y, p[i].x, p[i].y);
      if (d<limit) {
        stroke(0, map(d, limit/2, limit, 255, 0));
        line(x, y, p[i].x, p[i].y);
      }
    }
    x = lm(x, width);
    y = lm(y, width);
  }
}
float lm(float a, float b) {
  if (a<0) {
    return a+b;
  } 
  if (a>b) {
    return a-b;
  }
  return a;
}
