float incX = 0.0467;
float incY = 0.0505;
float distance = 11;
int wavesHeight = 322;
boolean looping = true;
 float frame = 0;

void setup() {
size(255, 150);
  background(0);
  noiseDetail(2);
  
  
  
}

void draw() {
  float zOff = frameCount * 0.01;
  background(0);
  //noStroke();
  strokeWeight(1.5);
  stroke(0);
  float yOff = 0;
  for(int y = - wavesHeight; y < height + wavesHeight; y += distance) {
    float xOff = 0;
    float r = xOff;
    beginShape();
    
    for(int x = -wavesHeight; x < width *2; x += distance) {
      float n = noise(xOff, yOff, zOff);
      float g = n;
      float b = yOff;
      float value = map(n, 0, 1, -wavesHeight, wavesHeight);
      curveVertex(x, y + value);
      xOff += incX;
      r = map(xOff, 0, 3.5, 0, 255);
      g = map(n, 0.2, 0.7, 0, 255);
      b = map(yOff, 0, 4, 0, 255);
      fill(r, g, b, b*1.5);
    }
    endShape();
    yOff += incY;
  
  }
  
}
