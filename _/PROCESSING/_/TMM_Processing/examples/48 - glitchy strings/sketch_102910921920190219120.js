// https://en.wikipedia.org/wiki/String_vibration
var string;
var colorSel=0;
var color1=255;
var color2=0;

function setup() {
  createCanvas(windowWidth, windowHeight);
  string = new String(1);
  background(color1);
  frameRate(120)
}

function draw() {
  fill(color2);
  noStroke();
  rect(0,0,width,height);
  
  translate(0,height/2);
  
  string.display();
  string.update();
}

var String = function(spacing){
  this.k = 0.9; // wave speed [0 : 0.9] (h*T/m)
  this.rest = 0.997; // damping [1.0 : 0]
  this.s = spacing;
  this.ys = []; // y positions at time t
  for(let x=0; x<width; x+=spacing){
    this.ys.push(0);
  }
  this.ysp = this.ys.slice(); // y positions at time t-1
}
String.prototype = {
  display: function(){
    fill(255);
    strokeWeight(2);
    beginShape();
    for(let i=1; i<this.ys.length; i++){
      vertex(i*this.s,this.ys[i]);
    }
    vertex(width,height/2);
    vertex(0,height/2);
    endShape(CLOSE);
  },
  update: function(){
    let tmp = [];
    tmp[0] = 0;
    for(let i=1; i<this.ys.length-1; i++){
      // from the differential equation d2y/dx2 = m/T*d2y/dt2 with finite difference
      tmp[i] = 2*this.ys[i]-this.ysp[i]+this.k*(this.ys[i+1]+this.ys[i-1]-2*this.ys[i]);
      tmp[i] *= this.rest;
    }
    if(mouseIsPressed){
      tmp[(mouseX/this.s)<<0] = mouseY-height/2;
      colorSel+=1;
      colorSel=colorSel%2;
      color1=colorSel*255;
      color2=255-color1;
      
    }
    tmp[this.ys.length-1] = 0;
    this.ysp = this.ys.slice();
    this.ys = tmp.slice();
  }
};
