import controlP5.*; 
import themidibus.*; import javax.sound.midi.MidiMessage;
import javax.sound.midi.SysexMessage; import javax.sound.midi.ShortMessage;

ControlP5 cp5; MidiBus myBus; int myColor = color(255); int c1,c2; float n,n1;

void setup() { 
  size(400,600); noStroke(); cp5 = new ControlP5(this);

  cp5.addButton("colorA") .setValue(0) .setPosition(100,100) .setSize(200,19);
  cp5.addButton("colorB") .setValue(0) .setPosition(100,200) .setSize(200,19);
  cp5.addButton("colorC") .setValue(0) .setPosition(100,300) .setSize(200,19);  
  
  MidiBus.list(); myBus = new MidiBus(this, 0, 0); 
}

void draw() { 
  background(myColor); myColor = lerpColor(c1,c2,n); n += (1-n)* 0.1; 
  int channel = 0; int pitch = 64; int velocity = 127; myBus.sendNoteOn(channel, pitch, velocity);  delay(200); myBus.sendNoteOff(channel, pitch, velocity); delay(100);
  int status_byte = 0xA0; int channel_byte = 0; int first_byte = 64; int second_byte = 80; 
  myBus.sendMessage(status_byte, channel_byte, first_byte, second_byte);
  myBus.sendMessage(new byte[] { (byte)0xF0, (byte)0x1, (byte)0x2, (byte)0x3, (byte)0x4, (byte)0xF7 });
  try { SysexMessage message = new SysexMessage(); message.setMessage(0xF0, new byte[] {(byte)0x5, (byte)0x6, (byte)0x7, (byte)0x8, (byte)0xF7}, 5); myBus.sendMessage(message); } catch(Exception e) {} delay(2000);
}

public void controlEvent(ControlEvent theEvent) { println(theEvent.getController().getName()); n = 0; }
public void colorA(int theValue) { println("a button event from colorA: "+theValue); c1 = c2; c2 = color(0,160,100); }
public void colorB(int theValue) { println("a button event from colorB: "+theValue); c1 = c2; c2 = color(160,0,0); }
public void colorC(int theValue) { println("a button event from colorB: "+theValue); c1 = c2; c2 = color(0,0,160); }

void rawMidi(byte[] data) {
  println(); println("Raw Midi Data:"); println("--------"); println("Status Byte/MIDI Command:"+(int)(data[0] & 0xFF));
  for (int i = 1;i < data.length;i++) { println("Param "+(i+1)+": "+(int)(data[i] & 0xFF)); }
}

void midiMessage(MidiMessage message) { 
  println(); println("MidiMessage Data:"); println("--------"); println("Status Byte/MIDI Command:"+message.getStatus());
  for (int i = 1;i < message.getMessage().length;i++) {println("Param "+(i+1)+": "+(int)(message.getMessage()[i] & 0xFF));}
}

void delay(int time) { int current = millis(); while (millis () < current+time) Thread.yield();}
