final int NB_PARTICLES = 300;
final float MAX_PARTICLE_SPEED = 2.5;

//'root' of the noise
float noiseXY;
//used to move the noise - or not
float noiseSpeed;
//noise step (the smaller, the better granularity)
float stepNoiseXY;

myVector tabParticles[];//array of particles

float coeffColor;
int R;
int nbSymetries = 12;
PGraphics myPg;

float h, l, d, theta;
float rot = 0;
PVector s = new PVector(random(0), random(0));
PVector c;
PVector[] p = new PVector[4];
float rotSpeed = random(.002, .03);

void setup(){
  size(250, 250, P3D);
  background(0);
  initialize();
}

void initialize(){
  float n;
  noiseXY = noiseXY = random(123456);
  noiseSpeed = random(.01, .02) * (random(1)<.5?1:-1);
  coeffColor = random(.7, 2.3);
  stepNoiseXY = random(.004, .01);
  tabParticles = new myVector[NB_PARTICLES];
  for (int i = 0; i < NB_PARTICLES; i++)  {
    tabParticles[i] = new myVector();
  }

  R = min(height, width)/(int)(random(16));
  myPg = createGraphics(width, height, P2D);

  theta = random(PI / nbSymetries) + random((PI / nbSymetries)*0.5);
  l = R*sqrt(theta/8);
  h = R*cos(theta/8);
  for (int i = 0; i < 4; i++){
    p[i] = new PVector(width/2, height/2);
  }
  c = new PVector(width/2, height/2);
  d = sqrt(l*l + h*h);
}

void draw(){


  background(0);
  
  nbSymetries = int(map(random(width), 0, width, 2, random(200)))*2;
  myPg.fill(0, random(120));
  myPg.noStroke(); 
  myPg.rect(0, 0, random(width)*random(20), random(height)*random(20));
  
  noiseXY += noiseSpeed;
  myPg.beginDraw();
  for (int i = 0; i < NB_PARTICLES; i++){
    tabParticles[i].update();
  }
  myPg.endDraw();

  rot += rotSpeed;
  c.add(s);

  float angle1 = theta - rot;
  float angle2 = theta + rot;

  p[0] = new PVector(c.x - d/2 * cos(angle2), c.y - d/2 * sin(angle2));
  p[1] = new PVector(c.x + d/2 * cos(angle1), c.y - d/2 * sin(angle1));
  p[2] = new PVector(c.x + d/2 * cos(angle2), c.y + d/2 * sin(angle2));
  p[3] = new PVector(c.x - d/2 * cos(angle1), c.y + d/2 * sin(angle1));

  Boolean found = false;
  for (int i = 0; i < 4 && found == false; i++){
    if (p[i].x > width || p[i].x < 0){ 
      s.x *= -1;
      found = true;
    }else if (p[i].y > height || p[i].y < 0){ 
      s.y *= -1;
      found = true;
    }
  }
  if (found) rotSpeed = -rotSpeed;
  ////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////

  translate(width/random(8), height/random(8));
  beginShape(TRIANGLES);
  texture(myPg.get());
  noStroke();
  for (int i = 0; i < nbSymetries; i++){
    vertex(0, 0, (p[0].x+p[3].x)/2, (p[0].y+p[3].y)/2);
    vertex(R*cos(i*TWO_PI/nbSymetries), R*sin(i*TWO_PI/nbSymetries), (i%2 == 0) ? p[1].x : p[2].x, (i%2 == 0) ? p[1].y : p[2].y);
    vertex(R*cos((i+1)*TWO_PI/nbSymetries), R*sin((i+1)*TWO_PI/nbSymetries), (i%2 == 0) ? p[2].x : p[1].x, (i%2 == 0) ? p[2].y : p[1].y);
  }
  endShape();
//  image(myPg, 0, 0);
}

void mousePressed(){
  if (mouseButton == LEFT){
    initialize();
  }else if (mouseButton == RIGHT){
    rotSpeed = rotSpeed == 0 ? random(.002, .03)*(random(1)<.5?1:-1) : 0;
  }
}

class myVector{
  float x, y, prevX, prevY, vx, vy;
  color myColor;
  myVector () {
    x = prevX = random(width);
    y = prevY = random(height);
  }
  
  void update(){
    prevX = x;
    prevY = y;
    
    float n = noise(noiseXY+x*stepNoiseXY, noiseXY+y*stepNoiseXY);

    vx = (1-n)*2*cos(n * TWO_PI)*MAX_PARTICLE_SPEED;
    vy = (1-n)*2*sin(n * TWO_PI)*MAX_PARTICLE_SPEED;

    vx = constrain(vx, -MAX_PARTICLE_SPEED, MAX_PARTICLE_SPEED);
    vy = constrain(vy, -MAX_PARTICLE_SPEED, MAX_PARTICLE_SPEED);

    x += vx;
    y += vy;
    
    if (x < 0 || x > width ||  y < 0 || y > height) {
      x = prevX = random(width);
      y = prevY = random(height);
      n = noise(noiseXY+x*stepNoiseXY, noiseXY+y*stepNoiseXY);
    }
    myColor = color((255-n*255)*coeffColor, 255-n*126*coeffColor, 255*n*coeffColor);
//    strokeWeight(sqrt(vx*vx + vy*vy)*n*1.5);
    myPg.stroke(myColor, 120);
    myPg.line(prevX, prevY, x, y);
  }
}
