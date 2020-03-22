import controlP5.*;
ControlP5 cp5;

int myColor = color(255);

int c1,c2; float n,n1;

int colorIt=0; int mul1=1;

void setup() 
{
  size(1200,1200);
  noStroke();
  cp5 = new ControlP5(this); 
     
  buttons();
     
  PImage[] imgs = {loadImage("button_a.png"),loadImage("button_b.png"),loadImage("button_c.png")};
  cp5.addButton("play")
     .setValue(128)
     .setPosition(140,300)
     .setImages(imgs)
     .updateSize()
     ;
     
  cp5.addButton("playAgain")
     .setValue(128)
     .setPosition(210,300)
     .setImages(imgs)
     .updateSize()
     ;
}

void draw() 
{
  backgroundColor(); myColor = lerpColor(c1,c2,n); n += (1-n)* 0.1;
}

void buttons() 
{
   buttonsA(0.125,  1, 0.25);
   buttonsA(0.45, 2, 0.25);
   buttonsA(0.75, 3, 0.25);
   
   buttonsA(0.125,  4, 0.75);
   buttonsA(0.45, 5, 0.75);
   buttonsA(0.75, 6, 0.75);
   
   buttonsA(0.45,  7, 0.75);
}

void buttonsA(float mulA, int i, float iV) 
{
  cp5.addButton("struktureGenerator" + i)
     .setValue(0)
     .setPosition(width * mulA,100 + (iV*height))
     .setSize(200,19)
     ;
  
  cp5.addButton("struktureGenerator" + i)
     .setValue(100)
     .setPosition(width * mulA,120 + (iV*height))
     .setSize(200,19)
     ;
     
  cp5.addButton("struktureGenerator" + i)
     .setPosition(width * mulA, 140 + (iV*height))
     .setSize(200,19)
     .setValue(0)
     ;
     
  cp5.addButton("struktureGenerator" + i)
     .setPosition(width * mulA,160 + (iV*height))
     .setSize(200,19)
     .setValue(0)
     ;
     
  cp5.addButton("struktureGenerator" + i)
     .setPosition(width * mulA,180 + (iV*height))
     .setSize(200,19)
     .setValue(0)
     ; 
}

void backgroundColor() 
{ 
 colorIt+=mul1; background(colorIt);
 if(colorIt > 255 || colorIt < 0) {mul1*=-1;}
 background(colorIt);
}
