int n = (int)(random(200));
int radius;
Rotator[] rotating;
float t = 0.0;
float increment = PI/random(200);
float phaseShift = 0;
float colorSel=random(100);
int color1=0; int color2=255;

void setup(){
  if(colorSel<50) {color1=0; color2=255;}
  if(colorSel>50) {color2=0; color1=255;}
  stroke(color2); fill(color2);
  size(300,300);
  radius = width/(int)(random(2)+2);
  phaseShift = floor(random(100));
  rotating = new Rotator[n];  
  for(int i = 0; i < n; i++){
    rotating[i] = new Rotator(cos(TWO_PI/n * i) * radius + width/2, sin(TWO_PI/n * i) * radius + height/2, TWO_PI/n * i * phaseShift, radius);
  }  
}

void draw(){
    background(color1);
      stroke(color2); fill(color2);

  t += increment;
  //if(t >= PI) exit();  
  for(Rotator current: rotating){
    current.update(t);
  }
  //saveFrame(str(phaseShift) + "/jitter-poster.png");
  //exit();
}

void mousePressed(){
  phaseShift = floor(random(100));
  for(int i = 0; i < n; i++){
    rotating[i] = new Rotator(cos(TWO_PI/n * i) * radius + width/2, sin(TWO_PI/n * i) * radius + height/2, TWO_PI/n * i * phaseShift, radius);
  }
}

class Rotator{
  PVector vert;
  float phase = 0.0;
  int size = 0;   
  Rotator(float x_, float y_ , float phase_, int size_){
    vert = new PVector(x_, y_);
    phase = phase_;
    size = size_;    
  }    
  void update(float t){
    pushMatrix();
    
    //translate(vert.x + 20*noise(vert.x+t, vert.y),vert.y+20*noise(vert.x, vert.y+t)); //jitter
    translate(vert.x,vert.y);
    rotate(t + phase);    
    line(0, -size/2, 0, size/2);
    ellipse(0, -size/2, width/205, width/205);
    ellipse(0, size/2, width/205, width/205);
    popMatrix();
  }  
}
