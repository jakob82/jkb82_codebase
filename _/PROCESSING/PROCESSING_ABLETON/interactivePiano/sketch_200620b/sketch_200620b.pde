import controlP5.*;

import themidibus.*; //Import the library
import javax.sound.midi.MidiMessage; //Import the MidiMessage classes http://java.sun.com/j2se/1.5.0/docs/api/javax/sound/midi/MidiMessage.html
import javax.sound.midi.SysexMessage;
import javax.sound.midi.ShortMessage;

ControlP5 cp5;

int myColor = color(255);

int c1,c2;

float n,n1;

MidiBus myBus; // The MidiBus

int channel = 0; int pitch = 64; int velocity = 127;
int status_byte = 0xA0; int channel_byte = 0; int first_byte = 64; int second_byte = 80; 

void setup() {
  size(400, 400); noStroke(); cp5 = new ControlP5(this);
  
  // create a new button with name 'buttonA'
  cp5.addButton("colorA")
     .setValue(0)
     .setPosition(100,100)
     .setSize(200,19)
     ;

    // create a new button with name 'buttonA'
  cp5.addButton("colorB")
     .setValue(0)
     .setPosition(100,200)
     .setSize(200,19)
     ;

    // create a new button with name 'buttonA'
  cp5.addButton("colorC")
     .setValue(0)
     .setPosition(100,300)
     .setSize(200,19)
     ;

  MidiBus.list(); myBus = new MidiBus(this, 0, 3); 

}

void draw() {
  background(myColor); myColor = lerpColor(c1,c2,n); n += (1-n)* 0.1; 
  
   
}

void midiMessageOut() {
 

  myBus.sendNoteOn(channel, pitch, velocity); // Send a Midi noteOn
  delay(200);
  myBus.sendNoteOff(channel, pitch, velocity); // Send a Midi nodeOff
  delay(100);

  //Or for something different we could send a custom Midi message ...


  myBus.sendMessage(status_byte, channel_byte, first_byte, second_byte);

  //Or we could even send a variable length sysex message
  //IMPORTANT: On mac you will have to use the MMJ MIDI subsystem to be able to send SysexMessages. Consult README.md for more information

  myBus.sendMessage(
    new byte[] {
      (byte)0xF0, (byte)0x1, (byte)0x2, (byte)0x3, (byte)0x4, (byte)0xF7
    }
  );
  //We could also do the same thing this way ...

  try { //All the methods of SysexMessage, ShortMessage, etc, require try catch blocks
    SysexMessage message = new SysexMessage();
    message.setMessage(
      0xF0, 
      new byte[] {
        (byte)0x5, (byte)0x6, (byte)0x7, (byte)0x8, (byte)0xF7
      },
      5
    );
    myBus.sendMessage(message);
  } catch(Exception e) {

  }

  delay(2000);

  
}

void rawMidi(byte[] data) { // You can also use rawMidi(byte[] data, String bus_name)
  // Receive some raw data
  // data[0] will be the status byte
  // data[1] and data[2] will contain the parameter of the message (e.g. pitch and volume for noteOn noteOff)
  println();
  println("Raw Midi Data:");
  println("--------");
  println("Status Byte/MIDI Command:"+(int)(data[0] & 0xFF));
  // N.B. In some cases (noteOn, noteOff, controllerChange, etc) the first half of the status byte is the command and the second half if the channel
  // In these cases (data[0] & 0xF0) gives you the command and (data[0] & 0x0F) gives you the channel
  for (int i = 1;i < data.length;i++) {
    println("Param "+(i+1)+": "+(int)(data[i] & 0xFF));
  }
}

void midiMessage(MidiMessage message) { // You can also use midiMessage(MidiMessage message, long timestamp, String bus_name)
  // Receive a MidiMessage
  // MidiMessage is an abstract class, the actual passed object will be either javax.sound.midi.MetaMessage, javax.sound.midi.ShortMessage, javax.sound.midi.SysexMessage.
  // Check it out here http://java.sun.com/j2se/1.5.0/docs/api/javax/sound/midi/package-summary.html
  println();
  println("MidiMessage Data:");
  println("--------");
  println("Status Byte/MIDI Command:"+message.getStatus());
  for (int i = 1;i < message.getMessage().length;i++) {
    println("Param "+(i+1)+": "+(int)(message.getMessage()[i] & 0xFF));
  }
}

void delay(int time) {
  int current = millis();
  while (millis () < current+time) Thread.yield();
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}


// function colorA will receive changes from 
// controller with name colorA
public void colorA(int theValue) {
  println("a button event from colorA: "+theValue);
  c1 = c2;
  c2 = color(0,160,100);
  
  channel = 0; pitch = 60; velocity = 127;
  status_byte = 0xA0; channel_byte = 0; first_byte = 60; second_byte = 80; 

  midiMessageOut();

}

public void colorB(int theValue) {
  println("a button event from colorB: "+theValue);
  c1 = c2;
  c2 = color(150,0,0);

  channel = 0; pitch = 62; velocity = 127;
  status_byte = 0xA0; channel_byte = 0; first_byte = 62; second_byte = 80; 

  midiMessageOut();

}

public void colorC(int theValue) {
  println("a button event from colorC: "+theValue);
  c1 = c2;
  c2 = color(255,255,0);

  channel = 0; pitch = 64; velocity = 127;
  status_byte = 0xA0; channel_byte = 0; first_byte = 64; second_byte = 80; 

  midiMessageOut();

}
