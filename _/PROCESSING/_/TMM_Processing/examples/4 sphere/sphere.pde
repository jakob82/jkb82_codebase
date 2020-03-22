color c1 = 0;
color c2 = #ECF0F1;
int count = 4;
float r = 60;
float d = 8.25;
int MAX = 80;

void setup() {
  size(300, 300);
  smooth();
  frameRate(50);
  background(c1);
  ellipseMode(RADIUS);
  noStroke();
}

void draw() {
  fill(c1,100);
  rect(0, 0, width, height);
  fill(c2, 100);
  
  pushMatrix();
  translate(width / 2, height / 2);
  for (int n = 1; n < count; n++) {
    for (float a = 0; a <= 360; a += 1) {
      float progress = constrain(map(frameCount%MAX, 0+n*d, MAX+(n-count)*d, 0, 1), 0, 1);
      float ease = -0.5*(cos(progress * PI) - 1);
      float phase = 0 + 2*PI*ease + PI + radians(map(frameCount%MAX, 0, MAX, 0, 360));
      float x = map(a, 0, 360, -r, r);
      float y = r * sqrt(1 - pow(x/r, 2)) * sin(radians(a) + phase);
      ellipse(x, y, 1.5, 1.5);
    }
  }
  popMatrix();
  
}
