int nodesQ = 64;
int gapsQ = nodesQ-1;
int separation = 32;

int halfWidth, halfHeight;

float px = (gapsQ * separation) / 2;
float py = (gapsQ * separation) / 2;
float pz = 256;

float vx, vy, vz;
float h, w;

int[] vertexPositions = new int[nodesQ];

float[][] z1 = new float[nodesQ][nodesQ];
float[][] v1 = new float[nodesQ][nodesQ];

float[][] z2 = new float[nodesQ][nodesQ];
float[][] v2 = new float[nodesQ][nodesQ];

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void setup() {
  //fullScreen(P3D);
  size(600, 150, P3D);
  
  noFill();
  stroke(255);
  
  perspective(TAU/6, float(width)/height, 1, 10000);
  
  halfWidth = width/2;
  halfHeight = height/2;
  
  for (int i = 0; i < nodesQ; i++) {
    vertexPositions[i] = i * separation;
  }
  
  for (int x = 1; x < gapsQ; x++) {
    for (int y = 1; y < gapsQ; y++) {
      v1[x][y] = randomGaussian() * 64;
    }
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void draw() {
  for (int x = 1; x < gapsQ; x++) {
    for (int y = 1; y < gapsQ; y++) {
      v1[x][y] += (z1[x-1][y] + z1[x+1][y] + z1[x][y-1] + z1[x][y+1])            * 0.25 - z1[x][y];
      v2[x][y] += (z2[x-1][y] + z2[x+1][y] + z2[x][y-1] + z2[x][y+1] + z1[x][y]) * 0.25 - z2[x][y];
    }
  }
  for (int x = 1; x < gapsQ; x++) {
    for (int y = 1; y < gapsQ; y++) {
      z1[x][y] += v1[x][y];
      z2[x][y] += v2[x][y];
      z1[x][y] = constrain(z1[x][y], -8, 8);
      z2[x][y] = constrain(z2[x][y], -8, 8);
    }
  }
  
  float ax = 0, ay = 0;
  
  if (mousePressed) {
    if (mouseButton == LEFT) {
      ax = cos(h) * 8;
      ay = sin(h) * 8;
    }
    else if (mouseButton == RIGHT) {
      ax = cos(h) * -8;
      ay = sin(h) * -8;
    }
  }
  
  vx = vx * 0.9 + ax;
  vy = vy * 0.9 + ay;
  px += vx;
  py += vy;
  
  background(32);
  
  camera(px, py, pz,    px + cos(h)*cos(w), py + sin(h)*cos(w), pz + sin(w),    0, 0, -1);
  
  for (int y = 0; y < gapsQ; y++) {
    beginShape(TRIANGLE_STRIP);
    
    for (int x = 0; x < nodesQ; x++) {
      vertex(vertexPositions[x], vertexPositions[y], v2[x][y]);
      vertex(vertexPositions[x], vertexPositions[y+1], v2[x][y+1]);
    }
    
    endShape();
  }
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void mouseMoved() {
  h = map(mouseX, 0, width, 0, 8);
  w = map(mouseY, 0, height, 0, -1);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void mouseDragged() {
  h = map(mouseX, 0, width, 0, 8);
  w = map(mouseY, 0, height, 0, -1);
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void keyPressed() {
  for (int x = 1; x < gapsQ; x++) {
    for (int y = 1; y < gapsQ; y++) {
      z1[x][y] = 0;
      z2[x][y] = 0;
      v1[x][y] = randomGaussian() * 64;
      v2[x][y] = 0;
    }
  }
}
