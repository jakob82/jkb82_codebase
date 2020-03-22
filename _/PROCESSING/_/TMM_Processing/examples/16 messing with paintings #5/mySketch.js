/* Judith on Spin - Alessandro Valentino 2017
   Based on "Judith Beheading Holofernes", the sketch deconstruct the painting to expose a kaleidoscope of colors and variety in 
   Caravaggio's work, contrasting the violence of the scene depicted.
   */

var img;
var img_temp;
var a;

function preload(){
  img = loadImage("caravaggio.jpg");
}

function setup() {
  
  createCanvas(800, 600);
  img.resize(width * 0.6, height * 0.6);
  a = 0;

}

function draw() {
  
  blendMode(BLEND);
  fill(0, 180);
  rect(-10, -10, width + 10, height + 10);
  
  blendMode(ADD);
  
  for (var i = 0; i < 135; i++){
    push();
    translate(width/2, height/2);

    rotate(-0.5 * a * PI);

    rotate(i * a  * 2 * PI);

    copy(img, i * 10, 0, 30, img.height , 0, -height * 10 * abs(a) + 10, 30, img.height );
    pop();
  }
  
a = sin(frameCount * 0.001 *  2 *PI) * 0.1;
}