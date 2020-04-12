/*
project specifications:
- writing down comments
- modularize code 2 high level class abstractions
- publishing universal variables, and allowing concatenation of examples
- modularizing stuff in metaprogramming with javascript
- dumping out hundreds of thousands of examples for processing
*/
/*
(
  SynthDef(\moogsaw, { |freq = 500, amp = 1.0, outbus = 0, pan = 0, cutoff = 120, resonance = 0.7|
    var data; freq = Lag.kr(freq, 0.1); data = Saw.ar(freq, amp);
    // data = MoogVCF.ar(data, cutoff, resonance);
    data = data + CombN.ar(data, 0.05, 0.05, 0.5, 0.1); data = Pan2.ar(data, pan); Out.ar(outbus, data * ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1,30)]));
  }).store;
  )
  */

/*
SynthDef(\moogsaw, { |freq = 500, amp = 1.0, outbus = 0, pan = 0, cutoff = 120, resonance = 0.7|
	var data; freq = Lag.kr(freq, 0.1); data = Saw.ar(freq, amp);
	// data = MoogVCF.ar(data, cutoff, resonance);
	data = data + CombN.ar(data, 0.05, 0.05, 0.5, 0.1); data = Pan2.ar(data, pan); Out.ar(outbus, data);
}).store;
*/
/*
(
  SynthDef(\moogsaw, { |freq = 500, amp = 1.0, outbus = 0, pan = 0, cutoff = 120, resonance = 0.7|
    var data; freq = Lag.kr(freq, 0.1); data = Saw.ar(freq  * ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1,30)]), amp);
    // data = MoogVCF.ar(data, cutoff, resonance);
    data = data + CombN.ar(data, 0.05, 0.05, 0.5, 0.1); data = Pan2.ar(data, pan); Out.ar(outbus, data * ChaosGen.allSubclasses.choose.ar([rrand(1, 30), rrand(1,30)]));
  }).store;
  )
*/
/*
import supercollider.*; import oscP5.*; import gab.opencv.*; import processing.video.*; import java.awt.*;
Capture video; OpenCV opencv; int res = 8; Synth [] synths; float fundamental = 40;
int i, camX, camY;

void setup() {   
  frameRate(25);
    size(640, 480); video = new Capture(this, 640, 480);
    opencv = new OpenCV(this, 640, 480);
    opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); video.start();
    
    synths = new Synth[res];

    for (int x = 0; x < res; x++)
    {
    Synth synth = new Synth("moogsaw");
    synth.set("amp", 1.0 / res);
    synth.set("freq", fundamental * (x + 1) * random(0.99, 1.01));
    synth.set("pan", map(x, 0, 9, -1, 1));
    synth.create();
    
    synths[x] = synth;
    }
}

void ichBinMoving()
{
  for (int x = 0; x < res; x++)
  {
    float mx = map(camX, 0, width, 35, 80);
    synths[x].set("freq", mx * (x + 1) * random(0.99, 1.01));
  }
}

void draw() {
  scale(1); opencv.loadImage(video); image(video, 0, 0 );
  noFill(); stroke(0, 255, 0); strokeWeight(3);
  Rectangle[] faces = opencv.detect(); println(faces.length);
  for (i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y); camX=faces[i].x; camY=faces[i].y;
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
  ichBinMoving();
}

void captureEvent(Capture c) {c.read();}
void exit() {for (int x = 0; x < res; x++) synths[x].free(); super.exit();}
}
*/


/*


*/

// *****************************************************************************
// *****************************************************************************

/*
s.boot; b = Buffer.read(s, "C:/Users/tmm88/Desktop/_a.wav"); // add in one hour buffer
(
  SynthDef(\myTGrains, {|freq=599, amp=1.0, outbus=0, pan=0, trate, dur, clk, pos| 
      trate = amp * 120;
      dur = 12 / trate; clk = Impulse.kr(trate);
    pos = ((freq / 1000.0) * BufDur.kr(b)) * 4 + TRand.kr(0, 0.01, clk);
      pan = WhiteNoise.kr(0.6); Out.ar(0,TGrains.ar(2, clk, b, 1, pos, dur, pan, 0.1));
  }).store;
  )
*/

/*
  
import supercollider.*; import oscP5.*; import netP5.*; import gab.opencv.*; import processing.video.*; import java.awt.*;
Capture video; OpenCV opencv; int res = 8; Synth [] synths; float fundamental = 40;
int i, camX, camY;
OscP5 oscP5;
NetAddress myRemoteLocation;

int counter;
void setup() {   
  frameRate(10);
    size(640, 480); video = new Capture(this, 640, 480);
    opencv = new OpenCV(this, 640, 480);
    opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); video.start();
    oscP5 = new OscP5(this,12000);
    myRemoteLocation = new NetAddress("127.0.0.1",12001);
    synths = new Synth[res]; for (int x = 0; x < res; x++)
    {
    Synth synth = new Synth("myTGrains");
    synth.set("amp", 1.0 / res); synth.set("freq", fundamental * (x + 1) * random(0.99, 1.01));
    synth.set("pan", map(x, 0, 9, -1, 1)); synth.create(); synths[x] = synth;
    }
}

void ichBinMoving()
{
  for (int x = 0; x < res; x++)
  {
    float mx = map(camX, 0, width, 35, 80);
    synths[x].set("freq", mx);
  }
}

void draw() {
  scale(1); opencv.loadImage(video); image(video, 0, 0 );
  noFill(); stroke(0, 255, 0); strokeWeight(3);
  Rectangle[] faces = opencv.detect(); println(faces.length);
  if(faces.length==1){counter=0;}
  if(faces.length==0 && counter==0) {  
    OscMessage myMessage = new OscMessage("/test"); counter++;
    oscP5.send(myMessage, myRemoteLocation); 

}
  for (i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y); camX=faces[i].x; camY=faces[i].y;
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  } ichBinMoving();
}


void oscEvent(OscMessage theOscMessage) {
  print("### received an osc message.");
  print(" addrpattern: "+theOscMessage.addrPattern());
  println(" typetag: "+theOscMessage.typetag());
}

void captureEvent(Capture c) {c.read();}
void exit() {for (int x = 0; x < res; x++) synths[x].free(); super.exit();} */

//*********************************************************************************
//*********************************************************************************

/*
import processing.video.*;
Movie        videoComp;
PShader      vhs, vhs_glitch, vhs_wobble, binaryGlitch, sobel, ascii, bloom;
int          filterState         = 0;
int          numberOfFilters     = 7;
String       currentFilter;
boolean      skip = false;

import oscP5.*;
import netP5.*;

OscP5 oscP5;

void setup() {
  size(1280, 720, P3D); smooth(16); colorMode(HSB, 360, 100, 100, 100);
  videoComp = new Movie(this, "wetCity.mp4"); videoComp.loop();

  vhs = loadShader("vhs.glsl");
  vhs.set("iResolution", float(width), float(height));
  vhs_glitch = loadShader("vhs_glitch.glsl");
  vhs_glitch.set("iResolution", float(width), float(height));
  vhs_wobble = loadShader("vhs_wobble.glsl");
  vhs_wobble.set("iResolution", float(width), float(height));
  binaryGlitch = loadShader("binaryGlitch.glsl");
  binaryGlitch.set("iResolution", float(width), float(height));
  sobel = loadShader("sobel.glsl");
  sobel.set("iResolution", float(width), float(height));
  ascii = loadShader("ascii.glsl");
  ascii.set("iResolution", float(width), float(height));
  bloom = loadShader("bloomHDR.glsl");
  bloom.set("iResolution", float(width), float(height));
  
    oscP5 = new OscP5(this, 12001);

}

void draw() {

  if (skip == true) {filterState++; if (filterState > numberOfFilters) {filterState = 0;} skip = false;}
  vhs.set("iGlobalTime", millis() / 1000.0); vhs_glitch.set("iGlobalTime", millis() / 1000.0);
  vhs_wobble.set("iGlobalTime", millis() / 1000.0); bloom.set("iGlobalTime", millis() / 1000.0);
  image(videoComp, 0, 0, width, height); filterLayer();
  surface.setTitle("FPS " + nf(int(frameRate), 2) + " || filterState " + currentFilter);
}

void movieEvent(Movie m) {
  m.read();
}

void oscEvent(OscMessage theOscMessage) {
  if (theOscMessage.addrPattern().equals("/test")) {
        skip = true;
  }
}*/
//*********************************************************************************
//*********************************************************************************

/*
import gab.opencv.*; import java.awt.Rectangle; import processing.video.*; import controlP5.*;
OpenCV opencv; Capture video; ArrayList<Contour> contours; ArrayList<Contour> newBlobContours;
PImage src, preProcessedImage, processedImage, contoursImage; ArrayList<Blob> blobList;

int blobCount = 0; float contrast = 1.35; int brightness = 0; int threshold = 75;
boolean useAdaptiveThreshold = false;  int thresholdBlockSize = 489;
int thresholdConstant = 45; int blobSizeThreshold = 20; int blurSize = 4;

ControlP5 cp5; int buttonColor; int buttonBgColor;

class Blob {
  private PApplet parent; public Contour contour;
  public boolean available; public boolean delete;
  private int initTimer = 5; public int timer;
  int id;

  Blob(PApplet parent, int id, Contour c) {
    this.parent = parent; this.id = id; this.contour = new Contour(parent, c.pointMat);
    available = true; delete = false; timer = initTimer;}

  void display() {
    Rectangle r = contour.getBoundingBox(); float opacity = map(timer, 0, initTimer, 0, 127);
    fill(0,0,255,opacity); stroke(0,0,255); rect(r.x, r.y, r.width, r.height);
    fill(255,2*opacity); textSize(26); text(""+id, r.x+10, r.y+30);
  }
  void update(Contour newC) {contour = new Contour(parent, newC.pointMat); timer = initTimer;}
  void countDown() {timer--;}
  boolean dead() {if (timer < 0) return true; return false;}
  public Rectangle getBoundingBox() {return contour.getBoundingBox();}
}
void setup() {
  frameRate(15); video = new Capture(this, 640, 480); video.start();
  opencv = new OpenCV(this, 640, 480); contours = new ArrayList<Contour>();
  blobList = new ArrayList<Blob>(); size(840, 480, P2D);
  cp5 = new ControlP5(this); initControls();
  toggleAdaptiveThreshold(useAdaptiveThreshold);
}

void draw() {
  if (video.available()) {video.read();}
  opencv.loadImage(video); src = opencv.getSnapshot();
  opencv.gray(); opencv.contrast(contrast);
  preProcessedImage = opencv.getSnapshot();
  if (useAdaptiveThreshold) {
    if (thresholdBlockSize%2 == 0) thresholdBlockSize++;
    if (thresholdBlockSize < 3) thresholdBlockSize = 3;
    opencv.adaptiveThreshold(thresholdBlockSize, thresholdConstant);
  } else {opencv.threshold(threshold);}
  opencv.invert(); opencv.dilate(); opencv.erode(); opencv.blur(blurSize);
  processedImage = opencv.getSnapshot(); detectBlobs();
  contoursImage = opencv.getSnapshot();
  pushMatrix(); translate(width-src.width, 0); displayImages(); pushMatrix();
      scale(0.5); translate(src.width, src.height); displayBlobs(); popMatrix(); popMatrix();
}

void displayImages() {pushMatrix(); scale(0.5); image(src, 0, 0);
  image(preProcessedImage, src.width, 0);
  image(processedImage, 0, src.height); image(src, src.width, src.height);
  popMatrix(); stroke(255); fill(255); textSize(12); text("Source", 10, 25);
  text("Pre-processed Image", src.width/2 + 10, 25);
  text("Processed Image", 10, src.height/2 + 25);
  text("Tracked Points", src.width/2 + 10, src.height/2 + 25);
}

void displayBlobs() {for (Blob b : blobList) {strokeWeight(1); b.display();}}

void displayContours() {for (int i=0; i<contours.size(); i++) {Contour contour = contours.get(i); noFill(); stroke(0, 255, 0); strokeWeight(3); contour.draw();}}

void displayContoursBoundingBoxes() {
  for (int i=0; i<contours.size(); i++) {Contour contour = contours.get(i); Rectangle r = contour.getBoundingBox();
    if ((r.width < blobSizeThreshold || r.height < blobSizeThreshold)) continue;
    stroke(255, 0, 0); fill(255, 0, 0, 150); strokeWeight(2); rect(r.x, r.y, r.width, r.height);}
}

void detectBlobs() {
  contours = opencv.findContours(true, true);
  newBlobContours = getBlobsFromContours(contours);
  if (blobList.isEmpty()) {
    for (int i = 0; i < newBlobContours.size(); i++) {
      println("+++ New blob detected with ID: " + blobCount);
      blobList.add(new Blob(this, blobCount, newBlobContours.get(i)));
      blobCount++;
    }

  } else if (blobList.size() <= newBlobContours.size()) {
    boolean[] used = new boolean[newBlobContours.size()];
    for (Blob b : blobList) {
       float record = 50000;
       int index = -1;
       for (int i = 0; i < newBlobContours.size(); i++) {
         float d = dist(newBlobContours.get(i).getBoundingBox().x, newBlobContours.get(i).getBoundingBox().y, b.getBoundingBox().x, b.getBoundingBox().y);
         if (d < record && !used[i]) {
           record = d;
           index = i;
         }
       }
       // Update Blob object location
       used[index] = true;
       b.update(newBlobContours.get(index));
    }
    // Add any unused blobs
    for (int i = 0; i < newBlobContours.size(); i++) {
      if (!used[i]) {
        println("+++ New blob detected with ID: " + blobCount);
        blobList.add(new Blob(this, blobCount, newBlobContours.get(i)));
        //blobList.add(new Blob(blobCount, blobs[i].x, blobs[i].y, blobs[i].width, blobs[i].height));
        blobCount++;
      }
    }

  // SCENARIO 3
  // We have more Blob objects than blob Rectangles found from OpenCV in this frame
  } else {
    // All Blob objects start out as available
    for (Blob b : blobList) {
      b.available = true;
    }
    // Match Rectangle with a Blob object
    for (int i = 0; i < newBlobContours.size(); i++) {
      // Find blob object closest to the newBlobContours.get(i) Contour
      // set available to false
       float record = 50000;
       int index = -1;
       for (int j = 0; j < blobList.size(); j++) {
         Blob b = blobList.get(j);
         float d = dist(newBlobContours.get(i).getBoundingBox().x, newBlobContours.get(i).getBoundingBox().y, b.getBoundingBox().x, b.getBoundingBox().y);
         //float d = dist(blobs[i].x, blobs[i].y, b.r.x, b.r.y);
         if (d < record && b.available) {
           record = d;
           index = j;
         }
       }
       // Update Blob object location
       Blob b = blobList.get(index);
       b.available = false;
       b.update(newBlobContours.get(i));
    }
    // Start to kill any left over Blob objects
    for (Blob b : blobList) {
      if (b.available) {
        b.countDown();
        if (b.dead()) {
          b.delete = true;
        }
      }
    }
  }

  // Delete any blob that should be deleted
  for (int i = blobList.size()-1; i >= 0; i--) {
    Blob b = blobList.get(i);
    if (b.delete) {
      blobList.remove(i);
    }
  }
}

ArrayList<Contour> getBlobsFromContours(ArrayList<Contour> newContours) {

  ArrayList<Contour> newBlobs = new ArrayList<Contour>();

  // Which of these contours are blobs?
  for (int i=0; i<newContours.size(); i++) {

    Contour contour = newContours.get(i);
    Rectangle r = contour.getBoundingBox();

    if (//(contour.area() > 0.9 * src.width * src.height) ||
        (r.width < blobSizeThreshold || r.height < blobSizeThreshold))
      continue;

    newBlobs.add(contour);
  }

  return newBlobs;
}

void initControls() {
  cp5.addSlider("contrast").setLabel("contrast").setPosition(20,50).setRange(0.0,6.0);
  cp5.addSlider("threshold").setLabel("threshold").setPosition(20,110).setRange(0,255);
  cp5.addToggle("toggleAdaptiveThreshold").setLabel("use adaptive threshold").setSize(10,10).setPosition(20,144);
  cp5.addSlider("thresholdBlockSize").setLabel("a.t. block size").setPosition(20,180).setRange(1,700);
  cp5.addSlider("thresholdConstant").setLabel("a.t. constant").setPosition(20,200).setRange(-100,100);
  cp5.addSlider("blurSize").setLabel("blur size").setPosition(20,260).setRange(1,20);
  cp5.addSlider("blobSizeThreshold").setLabel("min blob size").setPosition(20,290).setRange(0,60);
  buttonColor = cp5.getController("contrast").getColor().getForeground();
  buttonBgColor = cp5.getController("contrast").getColor().getBackground();
}

void toggleAdaptiveThreshold(boolean theFlag) {
  useAdaptiveThreshold = theFlag;
  if (useAdaptiveThreshold) {
    setLock(cp5.getController("threshold"), true);
    setLock(cp5.getController("thresholdBlockSize"), false);
    setLock(cp5.getController("thresholdConstant"), false);

  } else {setLock(cp5.getController("threshold"), false);
    setLock(cp5.getController("thresholdBlockSize"), true);
    setLock(cp5.getController("thresholdConstant"), true);
  }
}

void setLock(Controller theController, boolean theValue) {
  theController.setLock(theValue);
  if (theValue) {theController.setColorBackground(color(150,150));
    theController.setColorForeground(color(100,100));
  } else {
    theController.setColorBackground(color(buttonBgColor));
    theController.setColorForeground(color(buttonColor));
  }
}
*/
/*
import gab.opencv.*; import processing.video.*; import java.awt.*; Capture video; OpenCV opencv;

void setup() {
  size(640, 480); video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE); video.start();
}

void draw() {
  scale(1); opencv.loadImage(video); image(video, 0, 0 );
  noFill(); stroke(0, 255, 0); strokeWeight(3);
  Rectangle[] faces = opencv.detect(); println(faces.length);
  for (int i = 0; i < faces.length; i++) {println(faces[i].x + "," + faces[i].y);
    rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);}}

void captureEvent(Capture c) {
  c.read();
}*/

/*
import processing.video.*; import boofcv.factory.background
import boofcv.processing.*; import java.util.*;

Capture cam; SimpleMotionDetection detector; int frames=0;

void setup() {
  initializeCamera(640, 480); surface.setSize(cam.width, cam.height);
  detector = Boof.motionDetector(new ConfigBackgroundBasic(35, 0.005f));
}

void draw() {
  if (cam.available() == true) {cam.read();
    if( frames >= 5 ) {SimpleBinary binary = detector.segment(cam); 
      image(binary.visualize(), 0, 0);} frames++;
  }
}

void initializeCamera( int desiredWidth, int desiredHeight ) {
  String[] cameras = Capture.list();
  if (cameras.length == 0) {println("There are no cameras available for capture."); exit();
  } else {cam = new Capture(this, desiredWidth, desiredHeight); cam.start();}}
  */
/*
import processing.video.*; import boofcv.processing.*; import boofcv.struct.image.*;
import georegression.struct.point.*; import boofcv.abst.feature.detect.interest.*;

Capture cam; SimpleTrackerPoints tracker; int target = 100;

void setup() {
  initializeCamera(320,240); surface.setSize(cam.width, cam.height);
  ConfigGeneralDetector confDetector = new ConfigGeneralDetector();
  confDetector.radius = 4; confDetector.threshold = 2;
  tracker = Boof.trackerKlt(null,confDetector,ImageDataType.F32);
}


void draw() {
  if (cam.available() == true) { cam.read(); tracker.process(cam);
    if( tracker.totalTracks() < target ) {
      tracker.spawnTracks(); target = (int)(tracker.totalTracks()*0.4); 
      target = target < 30 ? 30 : target;}} image(cam, 0, 0);

  // Draw a circle around each point being tracked
  stroke(0xFF,0,0); int N = tracker.totalTracks(); for( int i = 0; i < N; i++ ) 
  {Point2D_F64 p = tracker.getLocation(i); ellipse((float)p.x,(float)p.y,5,5);}
}

void initializeCamera( int desiredWidth , int desiredHeight ) {
  String[] cameras = Capture.list();
  if (cameras.length == 0) {println("There are no cameras available for capture."); exit();
  } else {cam = new Capture(this, 640,480); cam.start();}
}*/
