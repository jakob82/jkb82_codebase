float theta;
float a;
float col;
float num;
float r;
float ranNum=random(360);

void setup() {
  size(300, 300);
  frameRate(120);
}

void draw() {
  background(0);
  translate(width/2, height/2);
  theta = map(sin(millis()/1000.0), -1, 1, 0, PI/6);

  float num=6;
  for (int i=0; i<num; i++) {
    a = map(sin(millis()/1000.0), -1, 1, 0, width/2);
    rotate(TWO_PI/num);
    branch(a);
  }
}

void branch(float len) {
  col=map(len, 0, ranNum, 150, 255);
  stroke (255);
  line(0, 0, 0, -len/2);

  fill(125);
  r = map(a, 0, width/2, ranNum*0.1, ranNum*0.1);
  ellipse(0, -len, r, r);
  len-=ranNum/4;


  //枝干
  if (len>30) {
    pushMatrix(); 
    translate(0, -ranNum);
    rotate(theta);
    branch(len); 
    popMatrix();

    pushMatrix();
    translate(0, -ranNum);
    rotate(-theta);
    branch(len); 
    popMatrix();
  }
}
