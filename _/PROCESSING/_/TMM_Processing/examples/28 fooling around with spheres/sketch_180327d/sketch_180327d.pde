// arc, PI, strokeCap, revolve, ellipse
// An animation of a still graphic I saw on-line somewhere.
// Click to toggle background black/white

float move;
boolean isBlkbg;

void setup() {
  size(150, 150);
  noFill();
  strokeCap(SQUARE);
  isBlkbg = true;
}

void draw() {
  if (isBlkbg) background(0);
  else background(245);
  for(int i = 0; i < (int)(random(6))+3; i++) {
  drawShape(random(width), move);
  drawShape(random(width), move*.6);
  drawShape(random(width), move*.9);
  drawShape(random(width), move*1.5);
  move += .01;
  }
}

void drawShape(float sze, float incr) {
  if (isBlkbg) stroke(245, 100);
  else stroke(50, 50);
  strokeWeight(.5);
  ellipse(width/2, height/2, sze, sze);
  if (isBlkbg)stroke(245);
  else stroke(50);
  strokeWeight(3);
  arc(width/2, height/2, sze, sze, incr, incr+ PI);
  strokeWeight(15);
  arc(width/2, height/2, sze, sze, -incr, -incr+PI/2.0);  
  strokeWeight(25);
  arc(width/2, height/2, sze, sze, incr/2, incr/2+PI/6);
}

void mousePressed() {
  isBlkbg = !isBlkbg;
}
