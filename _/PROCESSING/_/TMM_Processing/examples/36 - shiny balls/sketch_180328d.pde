int trail = (100);
int[] x = new int[trail];
int[] y = new int[trail];
int[] r = new int[trail];
int[] g = new int[trail];
int[] b = new int[trail];

void setup() {
  size(200, 200);
  noStroke();
  noCursor();
}

void draw() {
  background(0);
  x[0] = (int)random(width);
  y[0] = (int)random(height);
  r[0] = int(500 - dist((int)random(width), (int)random(height), 250, 0));
  g[0] = int(500 - dist((int)random(width), (int)random(height), 500, 490));
  b[0] = int(500 - dist((int)random(width), (int)random(height), 0, 490));
  for (int i = trail-1; i >= 0; i--) {
    fill(random(r[i]));
    if (i > 0) {
      x[i] = x[i-1];
      y[i] = y[i-1];
      r[i] = r[i-1];
      g[i] = g[i-1];
      b[i] = b[i-1];
    }
    ellipse(x[i], y[i], 100, 100);
  }
}
