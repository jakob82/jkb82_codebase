var step = 20;
var innerWidth = 325;
var t = 120;
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
