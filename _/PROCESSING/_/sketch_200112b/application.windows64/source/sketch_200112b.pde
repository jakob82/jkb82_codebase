import controlP5.*;
ControlP5 cp5;

boolean toggleValue = false; boolean toggleValue2 = false; boolean toggleValue3 = false; boolean toggleValue4 = false;
boolean toggleValue5 = false; boolean toggleValue6 = false; boolean toggleValue7 = false; boolean toggleValue8 = false;
boolean toggleValue9 = false; boolean toggleValue10 = false; boolean toggleValue11 = false; boolean toggleValue12 = false;

boolean _2toggleValue = false; boolean _2toggleValue2 = false; boolean _2toggleValue3 = false; boolean _2toggleValue4 = false;
boolean _2toggleValue5 = false; boolean _2toggleValue6 = false; boolean _2toggleValue7 = false; boolean _2toggleValue8 = false;
boolean _2toggleValue9 = false; boolean _2toggleValue10 = false; boolean _2toggleValue11 = false; boolean _2toggleValue12 = false;

Slider2D s1; Slider2D s2; Slider2D s3; Slider2D s4; Slider2D s5; Slider2D s6; Slider2D s7; Slider2D s8;

Knob myKnobA; Knob myKnobB; Knob myKnobC;

void setup() {
  size(1600,1000);
  background(0);
  smooth();
  cp5 = new ControlP5(this);
  
  cp5.addToggle("toggleValue") .setPosition(1200/10+(120*0),100) .setSize(50,20);
  cp5.addToggle("toggleValue2") .setPosition(1200/10+(120*1),100) .setSize(50,20);
  cp5.addToggle("toggleValue3") .setPosition(1200/10+(120*2),100) .setSize(50,20);
  cp5.addToggle("toggleValue4") .setPosition(1200/10+(120*3),100) .setSize(50,20);
  cp5.addToggle("toggleValue5") .setPosition(1200/10+(120*4),100) .setSize(50,20);
  cp5.addToggle("toggleValue6") .setPosition(1200/10+(120*5),100) .setSize(50,20);
  cp5.addToggle("toggleValue7") .setPosition(1200/10+(120*6),100) .setSize(50,20);
  cp5.addToggle("toggleValue8") .setPosition(1200/10+(120*7),100) .setSize(50,20);
  cp5.addToggle("toggleValue9") .setPosition(1200/10+(120*8),100) .setSize(50,20);
  cp5.addToggle("toggleValue10") .setPosition(1200/10+(120*9),100) .setSize(50,20);
  cp5.addToggle("toggleValue11") .setPosition(1200/10+(120*10),100) .setSize(50,20);
  cp5.addToggle("toggleValue12") .setPosition(1200/10+(120*11),100) .setSize(50,20);
  
  cp5.addToggle("_2toggleValue") .setPosition(1200/10+(120*0),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue2") .setPosition(1200/10+(120*1),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue3") .setPosition(1200/10+(120*2),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue4") .setPosition(1200/10+(120*3),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue5") .setPosition(1200/10+(120*4),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue6") .setPosition(1200/10+(120*5),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue7") .setPosition(1200/10+(120*6),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue8") .setPosition(1200/10+(120*7),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue9") .setPosition(1200/10+(120*8),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue10") .setPosition(1200/10+(120*9),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue11") .setPosition(1200/10+(120*10),200) .setSize(50,20);
  cp5.addToggle("_2toggleValue12") .setPosition(1200/10+(120*11),200) .setSize(50,20);
  
  cp5.addToggle("toggle") .setPosition(1200/10+(120*0),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle2") .setPosition(1200/10+(120*1),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle3") .setPosition(1200/10+(120*2),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle4") .setPosition(1200/10+(120*3),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle5") .setPosition(1200/10+(120*4),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle6") .setPosition(1200/10+(120*5),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle7") .setPosition(1200/10+(120*6),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle8") .setPosition(1200/10+(120*7),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle9") .setPosition(1200/10+(120*8),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle10") .setPosition(1200/10+(120*9),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle11") .setPosition(1200/10+(120*10),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("toggle12") .setPosition(1200/10+(120*11),300) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  
  cp5.addToggle("_toggle") .setPosition(1200/10+(120*0),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle2") .setPosition(1200/10+(120*1),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle3") .setPosition(1200/10+(120*2),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle4") .setPosition(1200/10+(120*3),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle5") .setPosition(1200/10+(120*4),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle6") .setPosition(1200/10+(120*5),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle7") .setPosition(1200/10+(120*6),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle8") .setPosition(1200/10+(120*7),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle9") .setPosition(1200/10+(120*8),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle10") .setPosition(1200/10+(120*9),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle11") .setPosition(1200/10+(120*10),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);
  cp5.addToggle("_toggle12") .setPosition(1200/10+(120*11),400) .setSize(50,20) .setValue(true) .setMode(ControlP5.SWITCH);

  cp5 = new ControlP5(this);
  s1 = cp5.addSlider2D("wave1") .setPosition(1200/10+((1200/4)*1),500) .setSize(100,100) .setMinMax(20,10,100,100) .setValue(50,50);
  s2 = cp5.addSlider2D("wave2") .setPosition(1200/10+((1200/4)*2),500) .setSize(100,100) .setMinMax(20,10,100,100) .setValue(50,50);
  s3 = cp5.addSlider2D("wave3") .setPosition(1200/10+((1200/4)*3),500) .setSize(100,100) .setMinMax(20,10,100,100) .setValue(50,50);
  s4 = cp5.addSlider2D("wave4") .setPosition(1200/10+((1200/4)*2),650) .setSize(100,100) .setMinMax(20,10,100,100) .setValue(50,50);
  s5 = cp5.addSlider2D("wave5") .setPosition(1200/10+((1200/4)*3),650) .setSize(100,100) .setMinMax(20,10,100,100) .setValue(50,50);
  s6 = cp5.addSlider2D("wave6") .setPosition(1200/10+((1200/4)*1),650) .setSize(100,100) .setMinMax(20,10,100,100) .setValue(50,50);

  myKnobA = cp5.addKnob("knob1") .setRange(0,255) .setValue(50) .setPosition(1200/10+((1200/4)*1),800) .setRadius(50) .setDragDirection(Knob.VERTICAL);
  myKnobB = cp5.addKnob("knob2") .setRange(0,255) .setValue(50) .setPosition(1200/10+((1200/4)*2),800) .setRadius(50) .setDragDirection(Knob.VERTICAL);
  myKnobC = cp5.addKnob("knob3") .setRange(0,255) .setValue(50) .setPosition(1200/10+((1200/4)*3),800) .setRadius(50) .setDragDirection(Knob.VERTICAL);

  smooth();

}

void draw() {background(0); pushMatrix(); popMatrix();}
