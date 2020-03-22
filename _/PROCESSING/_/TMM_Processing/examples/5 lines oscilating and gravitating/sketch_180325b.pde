// small modification to pre-existing code by tiagomoraismorgado (tmm2018)

int wit=0; int hit=0;

void setup() {
  size(400,400);
}

void draw() {

  wit+=1; hit+=1; wit=wit%width; hit=hit%width;
  
  background(0);
  
  float curveWidth = 10.0;
  float curveThickness = 10.0;
  float angleOffset = 0.9;
  
  float angleIncrement = map(hit, 0, height, 0.0, 0.2);
  float angleA = 0.0;
  float angleB = angleA + angleOffset;
  
  float k = map(wit, 0, width, 2.0, 4.0);
 
  for (int i = 0; i < height; i += curveWidth*k) {
    float waveColor = map(i, 0, hit+10, 0, 255);
    noStroke();

    pushMatrix();
    translate(0, width/2);
    fill(waveColor);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 10) {
      //float y1 = i + (sin(angleA)* curveWidth);
      //float y2 = i + (sin(angleB)* curveWidth);
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape();
    
    pushMatrix();
    scale(1.0, -1.0);
    beginShape(QUAD_STRIP);
    for (int x = 0; x <= width; x += 10) {
      //float y1 = i + (sin(angleA)* curveWidth);
      //float y2 = i + (sin(angleB)* curveWidth);
      float y1 = i + (sin(angleB) * curveWidth);
      float y2 = i + (cos(angleA) * curveWidth);
      vertex(x, y1);
      vertex(x, y2 + curveThickness);
      angleA += angleIncrement;
      angleB = angleA + angleOffset;
    }
    endShape();
    popMatrix();
    popMatrix();
  }
}
