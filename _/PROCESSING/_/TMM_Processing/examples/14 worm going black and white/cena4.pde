float theta, easing = 0.1;
suiveur chef;
int frames = 180, num=200;
float time=0;
float ita=0; 
float itb=0; 
float counter=0;
float ranNum=0;
float color1=0;
float color2=255;

void setup() {
  size(500, 500);
  chef = new suiveur();
}
 
void draw() {
  time=millis(); time=time%1250;
  counter+=1; counter=counter%2; if(counter==1) {itb=time;} if(counter==0) {ita=itb;}
  println("ita" + ita + " itb = " + itb + " counter " + counter);
  if(itb<ita) {ranNum=random(100);}
  if(ranNum<50) {color1=0; color2=255;}
  if(ranNum>50) {color1=255; color2=0;}
  background(color1);
  //chef.dessine(mouseX, mouseY);
  float x = width/2 + cos(theta)*200*sin(theta*2);
  float y = height/2 +sin(theta)*200*cos(theta*3);
  chef.dessine(x,y);
  theta += TWO_PI/frames;
  //if (frameCount>100 && frameCount<=frames+100) saveFrame("image-###.gif");
}
 
class suiveur {
  suiveur suivant;
  int i;
  float x, y;
  suiveur() {
    suivant = new suiveur(num);
    x=width/2;
    y=height/2;
  }
  suiveur(int n) {
    i = n;
    if (n>0) suivant = new suiveur(n-1);
  }
  void dessine(float _x, float _y) {
    x=_x+(x-_x)*easing;
    y=_y+(y-_y)*easing;
    fill(color2);
    noStroke();
    float sz = map(i, 0, num, 1, 20);
    ellipse(x, y, sz, sz);
    if (suivant!=null) {
      suivant.dessine(x, y);
    }
  }
}
