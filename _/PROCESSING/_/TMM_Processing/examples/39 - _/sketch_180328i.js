// tweak of http://www.openprocessing.org/sketch/55322
//
// sketch:  Circle_Recursion.pde 
//   v1.0   4/2014   initial version
//   v1.1   1/2017   running now with Java Script  
// rotating interactive recursive circles
//   + / -   left/right  change circle count
//   a / d   up/down     change recursion deep
//     r     reset all
//   <blanc>  rotation on/off
// press mouse button to change recursion deep (left/right)
//   and circle count (up/down)
// tags: 2d, circles, recursion, recursive, deep, rotate, rotation 

int recursionDeep = 5;              
int circleCount = 5;             // number of outer tangent circle
int frame = 0;
int circlesDrawn = 0;
boolean rotation = true;
float rot = 0.0;
float angle = TWO_PI / 2222.;

//---------------
void setup()
{
  size(8// David Mrugala
 
float angle;
 
void setup()
{
  size(600,600);
}
 
void draw()
{
  background(0, 35, 45);
  
  // rotation angle
  angle += 0.001;
 
  strokeWeight(23);
  stroke(0, 35, 45);
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
}00, 800);
  smooth();
  noStroke();
  println (">>> Circle Recursion v1.1 <<<");
}
//---------------
void draw()
{
  background(0);
  fill(222);
  text ("+/-  circles "+circleCount, 11,20);
  text ("a/d  recursion "+recursionDeep, 11,40);
  text (round(frameRate) + " fps", width-44,20);
  text ("n="+circlesDrawn,11,60);
  translate (width/2, height/2);
  if (rotation) frame++;
  rot = angle * frame;
  rotate(rot);
  circlesDrawn = 0;
  drawCircles (width, circleCount, recursionDeep);
}
//---------------
void drawCircles(float dia, int cCircle, int level)
{
  if (level > 0)
  {
    level--;
    fill (((recursionDeep - level) %2) * 255);
    ellipse (0, 0, dia, dia);
    circlesDrawn++;
    int cn = cCircle;
    float d = dia / (1.0 +1.0 / sin (PI/cn));
    if (d > 1.5)
      for (int i = 0; i < cn; i++)
      {
        pushMatrix();
        float radius = (dia - d) / 2;
        float angle = i * TWO_PI / cn;
        translate (sin(angle)*radius, cos(angle)*radius);
        rotate (angle);
        drawCircles (d, cn, level);   // recursive call
        popMatrix();
      }
    if(dia -2*d >= d)
      drawCircles(dia -2*d, cn, level);  // recursive call        
  }
}
//---------------
void resetAll ()
{
  circleCount = 5;
  recursionDeep = 5;
}
//---------------
void changeCircles (int delta)
{
  circleCount = constrain (circleCount + delta, 2, 20);
  println("circles: " + circleCount);
}
//---------------
void changeRecursion (int delta)
{
  recursionDeep = constrain (recursionDeep + delta, 1, 8);
  println("recursion: " + recursionDeep);
}
//---------------
void keyPressed()
{
  text (keyCode + " '" + key + "'    ", 11,height-20);
  if      (keyCode ==  LEFT) changeCircles(-1);
  else if (keyCode == RIGHT) changeCircles(+1);
  else if (keyCode ==    UP) changeRecursion(+1);
  else if (keyCode ==  DOWN) changeRecursion(-1);
  else switch(key) {
  case '+': changeCircles (+1);    break;
  case '-': changeCircles (-1);    break;
  case ' ': rotation = !rotation;  break;
  case 'a': changeRecursion (-1);  break;
  case 'd': changeRecursion (+1);  break;
  case 'r': resetAll();            break;
  case 's': save ("CircleRecursion.png");
  }
}
//---------------
void mousePressed()
{
  float mx = (mouseX - width/2);
  float my = (mouseY - height/2);
  if (abs(mx) > abs(my))
  { if (mx < 0.0) 
       changeCircles(-1);
    else changeCircles(+1);
  }
  else if (my < 0.0) 
       changeRecursion(+1);
    else changeRecursion(-1);
}
