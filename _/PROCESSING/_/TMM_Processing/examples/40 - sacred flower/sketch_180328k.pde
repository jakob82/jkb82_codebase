// David Mrugala
float angle;
 
void setup()
{
  size(500,500);
}
 
void draw()
{
  background(0);
  
  // rotation angle
  angle += random(0.1);
 
  strokeWeight(23);
  stroke(0);
  fill(255);
  
  // move coordinate origin to center of sketch window
  translate(width/2,height/2);
  
  // number of scaled rectangles
  for (int i=0; i<80; i++){
    rotate(angle);
    scale(0.95);
    rectMode(CENTER);
    rect(0,0,400,400);
  }
}
