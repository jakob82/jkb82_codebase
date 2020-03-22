// Equations from Fergus Crawshay(Ray) Murray at http://oolong.co.uk/Trochor.htm
// sin, cos, frameCount, TWO_PI, vertex
// 17 wobbly rectangles
// no interaction

int numPoints ;
float incr, R1, numTurns, phi, sw1, ratio1; 


void setup() {
  size(320, 320); 
  numPoints = (int)(random(2000));
  incr = TWO_PI/int(numPoints);
  numTurns = random(PI*2);
  ratio1 = random(PI*3);
  stroke(255);
  noFill();
  frameRate(120);
}

void draw() {
  numPoints = (int)(random(2000));
  background(0);
  translate(width/2, height/2);
  rotate(-sin(frameCount * .005));
  phi = frameCount * .01;
  R1 = random(220);
  sw1 = 1;
  for (int i = 0; i <= random(64); i++) {
    drawShape(R1, R1/random(50), ratio1, sw1);
    R1 *= .85;
    sw1 *= .8;
  }
}

void drawShape(float R, float r, float ratio, float sw) {
  strokeWeight(sw);
  beginShape();
  for (float i = 0; i < TWO_PI * numTurns; i += incr) {
    float x = R * cos(i) + r * cos(ratio * i - phi);
    float y = R * sin(i) + r * sin(ratio * i + phi);
    vertex(x, y);
  }
  endShape();
}
