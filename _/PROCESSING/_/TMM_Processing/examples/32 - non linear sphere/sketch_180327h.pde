int num=12, frames = (int)(random(360));
float theta;

void setup() {
  size(500, 500);
}


void draw() {
  background(0);
  stroke(240);
  noFill();

  for (int i=0; i<num; i++) {
    float sz = i*random(frames);
    float sw = map(cos(theta+PI/num*i), -1, 1, 1, random(32)+8);
    strokeWeight(sw);
    ellipse(width/2, height/2, sz, sz);
  }
  theta += PI/frames;
  //if (frameCount<=frames) saveFrame("image-###.gif");
}
