var osc; // this is an oscillator
var echo; // this is an echo

var notes = [66, 69, 63, 65]; // MIDI


var step = 0; // which note are we doing in the sequencer?
var frameincrement = 16; // how many frames to do one step?

function setup() {
  createCanvas(windowWidth, windowHeight);
  background(0);
  
  osc = new p5.Oscillator(); // this makes an oscillator
  osc.freq(400); // this gives it an initial frequency
  osc.amp(0.5); // this gives it an initial amplitude (volume)
  osc.setType('square'); // mellowness to harshness: 'sine', 'triangle', 'square', 'sawtooth'
  osc.start(); // this turns it on
  
  echo = new p5.Delay(); // this is an echo effect
  echo.process(osc, 0.25, 0.5, 5000); // this processes the oscillator... parameters are delay, feedback, cutoff
  amplitude = new p5.Amplitude();
  blendMode(ADD);
  //frameRate(5)
}


function draw() {
 
  
  var level = amplitude.getLevel();
  //background(0);
  var col = map(level, 0, 1, 0, 255);
  stroke(col, (col + random(500)) % 255, (col + random(500)) % 255, 10);
  strokeWeight(map(level, 0, 1, 0, 20));
  var x = map(level, 0, 1, random(width), width);
  var y = map(level, 0, 1, random(width), width);
  line(width / 2, height / 2, x / 2, y / 2);
  line(width / 2, height / 2, x * 2,  random(0,y));
  line(width / 2, height / 2, x / 4, y / 4);
  line(width / 2, height / 2, x * 4, random(0,y));
  fill(0);
  var size = map(level, 0, 1, 0, 500);
  ellipse(width / 2, height / 2, size, size);
   var f = midiToFreq(notes[step]); // this will be our new freq
  osc.freq(f); // set the freq
  frameincrement = floor(map(mouseY, 0, height, 5, 50));
  
  if(frameCount % frameincrement == 0) step = (step+1) % notes.length;
  
}
