var step = 20;
var innerWidth = 325;
var t = random(120)*4float radius = 70;

int x =[], y = [];
int prevX =[], prevY = [];

Boolean fade = true;

void setup()
{
    size( 450, 400 );
    background( 0 );
    stroke( 255 );
    
    x[0] = width/2;
    y[0] = height/2;
    
    prevX[0] = x[0];
    prevY[0] = y[0];
  
    prevX[1] = x[0];
    prevY[1] = y[0];

    stroke(255);
    strokeWeight( 2 );
    point( x[0], y[0] );
    scale(.01);

}

void draw()
{
    if (fade) {
     //   background(0);
        noStroke();
        fill( 0, 4 );
        rect( 0, 0, width, height );
    }
    
    for (i = 0; i < 20; i++){
    float angle = (TWO_PI / 6) * floor( random( 6 ));
    x[i+1] = x[i] + cos( angle ) * radius;
    y[i+1] = y[i] + sin( angle ) * radius;
    
    if ( x[i+1] < 0 || x[i+1] > width || x[i] > width) {
        x[i+1] = prevX[i];
        y[i+1] = prevY[i];
    }
    
    if ( y[i+1] < 0 || y[i+1] > height|| y[i] > height) {
        x[i+1] = prevX[i];
        y[i+1] = prevY[i];
    }
    
    stroke( 255, 64 );
    strokeWeight( 1 );
    line( x[i+1], y[i+1], prevX[i], prevY[i] );
    
    strokeWeight( 3 );
    point( x[i+1], y[i+1] );
    
    prevX[i+1] = x[i+1];
    prevY[i+1] = y[i+1];
    
     if (x[i+1] == x[i-2] && y[i+1] == y[i-2]) {
    fill(255);
    beginShape();
  
    for(int j = 0; j < 5; j++){
      vertex(x[j-2], y[j-2]);
    }
    endShape(CLOSE);
    
    
    }
      
    
   /* if(i >=1){
      prevX[0] = x[i+1];
      prevY[0] = x[i+1];
      
      angle = (TWO_PI / 6) * floor( random( 6 ));
      x[0] = x[i+1] + cos( angle ) * radius;
      y[0] = y[i+1] + sin( angle ) * radius;
      
      line( x[0], y[0], x[i+1], y[i+1] );
    }*/
    }
        
}

void keyPressed()
{
    if (key == 'f') {
        fade = !fade;
    }
};
var n = 0;

function setup() {
  createCanvas(600, 600);
  
  noStroke();
 
}

function draw() {

  var k = (width - innerWidth)/2;
  background(0);
  
  

  for (var i = 0; i < width/step/2; i++) {
    fill(255);
    ellipse (width*0.5, height*0.25, width/3, height/3);

    fill(255);
    ellipse (width*0.5, height*0.75, width/3, height/3);

    if ((i%2) == 0){
      fill(0);
    }
    // blendMode(DIFFERENCE);
    else {
      fill(255);
    }
    
    rect(0, step*i + width/2, width, step*(i+1) + width/2);
    
  }

 //  for (var j = 0; j < innerWidth/step; j++) {
 //    if ((j%2) == 0){
 //      fill(0);
 //    }
 //    else {
 //      fill(255);
 //    }
 //    line(k + step*j , k - step/2, step, 0);
 //  }
 // fill(255,0,0);
  var k = map(n)*10;

  var offset = -((frameCount % t) / t) * step * 2;
  for (var h = offset; h < height; h += step * 2.2) {
    rect(0, h + step, width, step);
  }

  n += 0.005;


}
