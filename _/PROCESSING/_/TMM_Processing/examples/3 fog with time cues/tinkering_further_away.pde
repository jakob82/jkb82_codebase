int it=0; float randomthresh=frameRate*PI;


color currentColor;
int pixelPos;
int pixelTotal;
int pixelDir = -1;

int intensity;
int defaultIntensity = 1;

int drawSpeed;
int defaultDrawSpeed = 50000;
int minDrawSpeed = 1000;
int maxDrawSpeed = 100000;

boolean showUI = true;

void setup()
{
  size(150, 150);
  background(0);
  pixelTotal = width * height;
  frameRate(120);
  
  init();
}

void init()
{
  background(0);
  pixelPos = width * height / 2 + width / 2;
  intensity = defaultIntensity;
  drawSpeed = defaultDrawSpeed;
}

void draw()
{   
  
  loadPixels();
  
  for (int i = 0; i < drawSpeed; i++)
  {
    drawRandomPixel();
  }
  
  updatePixels();
  
  if (showUI)
  {
    drawUI();
  }
it+=1; if(it>randomthresh) {randomthresh=random(frameRate * PI); it=0; background(0);}
println(it);
}

void drawRandomPixel()
{
  pixelDir = getDifferentRand(0, 4);
  
  switch (pixelDir)
  {
    case 0:
      moveUp();
      break;
    case 1:
      moveDown();
      break;
    case 2:
      moveLeft();
      break;
    case 3:
      moveRight();      
      break;
  }
  
  currentColor = offsetColor(intensity, intensity, intensity);
  pixels[pixelPos] = currentColor;  
}

color offsetColor(int offsetR, int offsetG, int offsetB)
{
  color newColor;
  color argb = pixels[pixelPos];
  int a = (argb >> 24) & 0xFF;
  int r = (argb >> 16) & 0xFF;
  int g = (argb >> 8) & 0xFF;
  int b = argb & 0xFF;  
  
  r += offsetR;
  g += offsetG;
  b += offsetB;
  
  newColor = color(r, g, b);
  
  return newColor;
}

void moveUp()
{
  if (pixelPos - height >= 0)
  {
    pixelPos -= height;
  }
}

void moveDown()
{
  if (pixelPos + height < pixelTotal)
  {
    pixelPos += height;
  }
}

void moveLeft()
{
  if (getX() - 1 >= 0)
  {
    pixelPos--;
  }
}

void moveRight()
{
  if (getX() + 1 < width)
  {
    pixelPos++;
  }
}

int getDifferentRand(int min, int max)
{  
  int rand = int (random(min, max));
  
  while (rand == pixelDir)
  {
    rand = int (random(min, max));
  }  
  
  return rand;
}

int getX()
{
  return int (pixelPos - (getY() * height));
}

int getY()
{
  return int (pixelPos / height);
}

void changeIntensity(int delta)
{
  intensity += delta;
  
  if (intensity > 100)
    intensity = 100;
  
  if (intensity < 1)
    intensity = 1;
}

void changeDrawSpeed(int delta)
{
  drawSpeed = delta > 0 ? drawSpeed * 10 : drawSpeed / 10;
  
  if (drawSpeed < minDrawSpeed)
  {
    drawSpeed = minDrawSpeed;
  }
  
  if (drawSpeed > maxDrawSpeed)
  {
    drawSpeed = maxDrawSpeed;
  }
}

void reset()
{
  init();
}

/***********************************
**          KEY INPUT              **
***********************************/

void keyPressed()
{
  if (key == CODED)
  {
    if (keyCode == UP)
    {
      changeIntensity(5);
    }
    if (keyCode == DOWN)
    {
      changeIntensity(-5);
    }
    if (keyCode == LEFT)
    {
      changeDrawSpeed(-1);
    }
    if (keyCode == RIGHT)
    {
      changeDrawSpeed(1);
    }
  }  
  else
  {
    if (key == 'r' || key == 'R')
    {
      reset();
    }
    
    if (key == 'u' || key == 'U')
    {
      showUI = !showUI;
    }
  }
}

/***********************************
**              UI                **
***********************************/

void drawUI()
{
  fill(0);
  noStroke();
  rect(0, 750, width, 800);  
  
  fill(255);
  textLeading(15);
  text("Draw Speed: " + drawSpeed + "\nDraw Intensity: " + intensity, 10, 770);
  text("Press 'r' to reset\nPress 'u' then 'r' to hide UI", 200, 770);
  text("Press 'UP'/'DOWN' to change draw intensity\nPress 'LEFT'/'RIGHT' to change draw speed", 400, 770);
}
