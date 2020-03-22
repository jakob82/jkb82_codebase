ArrayList<Particle> particles = new ArrayList<Particle>();
float[][] vectorSlopes, slopeValues;
float xOff, yOff, slope, xSpeed, ySpeed, xSpeedi, ySpeedi;
float xOffi, yOffi;
float wGap = 30;
float hGap = 30;
float space = 5;
boolean isPaused;
boolean isDrawn;

void setup() {
  size(200, 200);
  xSpeed = .11;
  ySpeed = .07;
  xSpeedi = .013;
  ySpeedi = .009;
  vectorSlopes = new float[int(width/wGap)][int(height/hGap)];
  slopeValues = new float[int(width/wGap)][int(height/hGap)];
  xOff = random(10000);
  yOff = random(10000);
  xOffi = xOff;
  yOffi = yOff;
  frameRate(120);
}

void draw() {
  translate(wGap - space, hGap - space);
  if (!isDrawn)
   background(255);
  float xPos, yPos, Lwidth, Lheight;
  if (!isPaused) {
   xOffi += xSpeedi;
   xOff = xOffi;
   yOffi += ySpeedi;  
   for (int x = 0; x < vectorSlopes.length; x++) {
    xOff += xSpeed;
    yOff = yOffi;
    for (int y = 0; y < vectorSlopes[x].length; y++) {      
      yOff += ySpeed;        
      xPos = x * wGap;
      yPos = y * hGap;
      Lwidth = (wGap - space)/2;
      Lheight = (hGap - space)/2;  
      slopeValues[x][y] = slope = map(noise(xOff, yOff), 0, 1, -Lheight / 2, Lheight / 2);
    }
   }
  }
  for (int x = 0; x < vectorSlopes.length; x++)
   for (int y = 0; y < vectorSlopes[x].length; y++) {
     xPos = x * wGap;
     yPos = y * hGap;
     Lwidth = (wGap - space)/2;
     Lheight = (hGap - space)/2;  
     line(xPos - Lwidth, yPos + (slopeValues[x][y] * Lwidth), xPos + Lwidth, yPos - (slopeValues[x][y] * Lwidth));   
   }
  for (int i = 0; i < particles.size(); i++) {
   particles.get(i).update();
   particles.get(i).display();
   if (particles.get(i).isDead)
    particles.remove(i);
  }
}

void keyPressed() {
if (key == ' ')
 isPaused = !isPaused;
else isDrawn = !isDrawn;
}

void mousePressed() {
  particles.add(new Particle(mouseX - (wGap - space), mouseY - (hGap - space)));
}

class Particle {
  PVector location;
  PVector size;
  color pColor;
  float totalSlope;
  PVector distance;
  boolean isDead;
  
  Particle(float xPos, float yPos) {
    location = new PVector(xPos, yPos);
    size = new PVector(10, 10);
    pColor = color(255,255, 255);
  }
  
  void update() {
    totalSlope = 0;
     float closestX = 5 * Math.round(location.x/5);
     float closestY = 5 * Math.round(location.y/5);
     float x = closestX / wGap;
     float y = closestY / hGap;
     if (x < vectorSlopes.length && y < vectorSlopes[0].length && x > 0 && y > 0)
      location = new PVector(location.x + 1, location.y - slopeValues[int(x)][int(y)]);  
     else isDead = true;
  }
  
  void display() {  
    fill(0);
    ellipse(location.x, location.y, size.x, size.y);
  }
}
