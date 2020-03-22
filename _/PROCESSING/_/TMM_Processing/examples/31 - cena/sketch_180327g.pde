// Processing 3.3.5

private static final int ARRAY_LIST_INITIAL_CAPACITY = 1024;
private static final float IDEAL_FRAME_RATE = 60f;

ArrayList<Body> bodyList;
BodyObserver currentBodyObserver;

PGraphics backgroundGraphics;
ArrayList<PGraphics> graphicsList;




void setup() {
  size(640, 640);
  frameRate(IDEAL_FRAME_RATE);

  background(255f);
  backgroundGraphics = createSandyBackground(width, height, 240f, 255f);

  graphicsList = new ArrayList<PGraphics>();
  generateSampleGraphics(graphicsList);

  bodyList = new ArrayList<Body>(ARRAY_LIST_INITIAL_CAPACITY);
  currentBodyObserver = new BodyObserver();
}

void draw() {
  imageMode(CORNER);
  image(backgroundGraphics, 0f, 0f);

  if (frameCount % 60 == 0) {
    generateSampleBodies();
  }

  for (Body currentBody : bodyList) {
    currentBody.update();
  }
  currentBodyObserver.updateListMembers(bodyList);
  for (Body currentBody : bodyList) {
    currentBody.display();
  }
}


int randomSignedInt() {
  if (random(1f) < 0.5f) {
    return 1;
  }
  return -1;
}

PGraphics createSandyBackground(int xSize, int ySize, float minBrightness, float maxBrightness) {
  PGraphics graphics = createGraphics(xSize, ySize);
  graphics.beginDraw();
  graphics.loadPixels();
  for (int x = 0; x < xSize; x++) {
    for (int y = 0; y < ySize; y++) {
      graphics.pixels[x + y * xSize] = color(random(minBrightness, maxBrightness));
    }
  }
  graphics.updatePixels();
  graphics.endDraw();

  return graphics;
}
