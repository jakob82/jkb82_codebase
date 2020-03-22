//The path to render (created under setup())
var path = [];
//The diagonal length of the screen. Used to draw lines that never end
//on-screen
var maxD;

//The canvas that will hold the resulting image
var out;

//The size of the image to create
var renderWidth = 1280;
var renderHeight = 720;

//The opacity of each line. If the effect looks too sharp,
//try lowering this
var opacity = Math.random() * 30;
var iterations = Math.random() * 1000;

//The function to use to initialize our path

var func = sine;

//Path functions taking a fractional percentage (0 to 1)
//and returning a vector based on that. You could make
//your own too.
function sine(f) {
	return createVector(f * width, sin(f * TWO_PI * 2) * renderHeight/2 + renderHeight/2);
}

function circle(f) {
  var r = p5.Vector.fromAngle(f * TWO_PI);
  r.mult(Math.random() * 255);
  r.add(renderWidth/Math.random() * 8, renderHeight/Math.random() * 8);
  return r;
}

function setup() {
  createCanvas(1280, 720);
  
  maxD = sqrt(sq(renderWidth) + sq(renderHeight));
  
  //Create our path using the 'func' variable
  //(although you don't have to use 'func')
  for(var i = 0; i<iterations; i++) {
    path.push(func(i/iterations));
  }

  //Create our graphics buffer
  out = createGraphics(renderWidth, renderHeight, P2D);
  out.smooth(Math.random() * 30);
  out.background(0);
  out.strokeWeight(Math.random() * 100);
  out.blendMode(ADD);
  out.colorMode(HSB, Math.random() * 255, Math.random() * 255, Math.random() * 200, Math.random() * 255);
  renderPath(path, out);
  background(0);
  imageMode(CENTER);
  var w, h;
  
  //Fit the image to the screen.
  if (renderWidth > width || renderHeight > height) {
    if (renderWidth >= renderHeight) {
      w = width;
      h = width/renderWidth * renderHeight;
    } else {
      w = height/renderHeight * renderWidth;
      h = height;
    }
  } else {
    w = renderWidth;
    h = renderHeight;
  }
  
  //Render the scaled image to the screen (the full image is
  //still in memory, so you can save it at full resolution)
  image(out, width/2, height/2, w, h);
}

function keyReleased() {
  if(key == ' ') {
    save(out, "Glowing-Sine-" + year() + "-" + month() + "-" + day() + "-" + hour() + "-" + minute() + "-" + second() + ".png");
  }
}

function lineR(output, x, y, a) {
  //Draw a line running through the point (x, y) at an angle
  output.line(x + sin(a) * maxD, y + cos(a) * maxD, x - sin(a) * maxD, y - cos(a) * maxD);
}

function renderPath(path, output) {
  for(var i = 0, j = 1; j < path.length; i++, j++) {
    var p1 = path[i];
    var p2 = path[j];
    output.stroke(i/path.length * Math.random() * 255, Math.random() * 255, Math.random() * 255, opacity);
    //Draw a line along the path at the angle from p1 to p2
    lineR(output, p1.x, p1.y, atan2(p2.y - p1.y, p2.x - p1.x));
  }
}

