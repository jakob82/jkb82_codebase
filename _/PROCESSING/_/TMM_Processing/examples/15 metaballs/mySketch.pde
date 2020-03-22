Blob[] blobs = new Blob[15];
float theta;
int frms = 120;

void setup() {
  size(500, 120);
  //colorMode(HSB,360,100,100);
  for (int i=0; i<blobs.length; i++) {
    int d = i%2==0?1:-1;
    float offSet = TWO_PI/blobs.length*i;
    blobs[i] = new Blob(random(width), random(height),offSet);
  }
}

void draw() {
  background(0);
  for (int i=0; i<blobs.length; i++) {
    blobs[i].update();
  }
  loadPixels();
  for (int x=0; x<width; x++) {
    for (int y=0; y<height; y++) {
      int index = x + y * width;
      float sum = 0;
      for (Blob b : blobs) {
        float d = dist(x, y, b.pos.x, b.pos.y);
        sum += b.r/d*20;
      }
      pixels[index] = color(sum-75);
    }
  }
  updatePixels();
  theta += TWO_PI/frms;
  //if (frameCount<frms) saveFrame("image-###.gif");
}

class Blob {

  PVector orig;
  PVector pos;
  PVector vel;
  float r;
  float d;
  float offSet;

  Blob(float x, float y, float _offSet) {
    orig = new PVector(x, y);
    pos = new PVector(0, 0);
    //vel = PVector.random2D();
    //vel.mult(random(2, 5));
    r = random(20, 100);
    //d = random(50, 200);
    offSet = _offSet;
  }

  void update() {
    //pos.add(vel);
    d = map(pow(sin(theta+offSet*3),1),-1,1,50,200);
    //d = map(pow(sin(theta+offSet*3),3),0,1,50,200);
    pos.x = width/2 + cos(offSet)*d;
    pos.y = height/2 + sin(offSet)*d;
  }


  void show() {
    noFill();
    stroke(255);
    //ellipse(pos.x, pos.y, r*2, r*2);
  }
}
