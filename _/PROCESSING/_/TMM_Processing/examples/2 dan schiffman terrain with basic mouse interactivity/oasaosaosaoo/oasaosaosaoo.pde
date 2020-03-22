int cols, rows; int scl=20; int w; int h; float flying=0;
float [][] terrain;

void setup() {size(500,500, P3D); w = width*4; h = height*4; cols = w/scl; rows = h/scl; terrain = new float[cols][rows];
  }

void draw() {
  float itY=map(mouseY, 0, height, 0, 0.1); float itX=map(mouseX, 0, width, 0, 0.1); flying+=itY;  
  float yoff= flying; for(int y=0; y<cols; y++) { float xoff=itX; {for(int x=0; x<rows; x++) 
  {terrain[x][y] = map(noise(xoff, yoff), 0, 1, -100, 100); xoff+=0.2;}}yoff+=itY;}
  background(0); stroke(255); noFill(); translate(width*0.5, height*0.5+50); rotateX(PI/3); translate(-w/2, -h/2+50); 
  for(int y=0; y<rows-1; y++) {beginShape(TRIANGLE_STRIP);
    for(int x=0; x<cols; x++) {vertex(x*scl, y*scl, terrain[x][y]); vertex(x*scl, (y+1)*scl, terrain[x][y+1]);}
    endShape();
  }
}
