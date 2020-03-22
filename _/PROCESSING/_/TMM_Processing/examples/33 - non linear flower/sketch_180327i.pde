int num = (int)(random(1000)), frms = (int)(random(360));
float theta;
int random1=random1=((int)(random(width)));
int random2=random1=((int)(random(width)));
int random3=random1=((int)(random(width)));
int random4=random1=((int)(random(width)));


void setup() {
  size(370, 370, P2D);
  frameRate(120);
}

void draw() {
  background(238);
  translate(width/(random1*0.1), height/(random4*0.1));
  myShape(1, random1, random2, 9,0);
  myShape(0, random3, -9, 9,random4);

  theta += PI/frms;
}

void myShape(int s, int f, int dir, int n, int v) {
  if (s == 0) {
    noStroke();
  } else {
    stroke(34);
  }
  fill(f);
  beginShape();
  for (int i=0; i<num; i++) {
    float angle = TWO_PI/num*i;
    float minV = map(sin(dir*theta+dir*angle*3), -1, 1, 15, 150);
    float d = map(sin(angle*n), -1, 1, minV, 220+v);
    float x = cos(angle)*d;
    float y = sin(angle)*d;
    vertex(x, y);
  }
  endShape(CLOSE);
}
