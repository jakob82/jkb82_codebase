//polar
color c1=0;
color c2=0;
color c3=255;
color c4=0;
float speedfactor=0.5;
float radbig=random(200);
float radpoint=random(10);
int numpoint=(int)(random(54));
float t=0;
float prevt=0;
int numgif=0;
MPoint[] points=new MPoint[numpoint];
MPoint orbit;
MPoint orbit2;

void setup()
{
  size(540, 540);
  for (int i = 0; i < points.length; i++) {
    points[i] = new MPoint(i*2*PI/numpoint, radbig, radpoint);
  }
  orbit=new MPoint(PI*0.25, radbig*1, radpoint);
  orbit2=new MPoint(PI*3/4, radbig*0.5, radpoint);
}

void draw()
{
 t=millis()*speedfactor;
  //t=20*frameCount;

  translate(width/2, height/2);
  background(c4);
  fill(c1);
  // drawcirc();
  for (int i=0;i<points.length;i=i+1) {
    points[i].setpos(t,i);
    points[i].display();
  //  point.mpush(orbit);
//   point.mpull(orbit2);
//   points[i].fix();
  }
  //  orbit.display();
  //orbit2.display();
  orbit.phi=orbit.phi-0.01;
  orbit2.phi=orbit2.phi+0.01;
 for (int i=0; i<points.length; i++) {
    stroke(c3);
    strokeWeight(numpoint*0.1);
 line(points[i].getx(),points[i].gety(),points[(i+18)%numpoint].getx(),points[(i+18)%numpoint].gety()) ;
    strokeWeight(1);
    noStroke();
  
  }
  if (numgif<64){ prevt=t;
  // saveFrame("image-####.gif"); numgif++;
 }  

}


float[] polarto(float phi, float rad)
{
  float[] ans = new float[2]; 
  ans[0]=cos(phi)*rad;
  ans[1]=sin(phi)*rad;
  return ans;
}

float[] cartto(float x, float y)
{
  float[] ans = new float[2]; 
  ans[0]=sqrt(x*x+y*y);
  ans[1]=atan2(y, x);
  return ans;
}



class MPoint {
  float phi;
  float rad;
  float size; 
  MPoint(float bphi, float brad, float bsize)
  {
    phi=bphi;
    rad=brad;
    size=bsize;
  }

  void display()
  {
    fill(c3);
    ellipse(polarto(phi, rad)[0], polarto(phi, rad)[1], size, size);
  }
  float getx()
  {
    return polarto(phi, rad)[0];
  }

  float gety()
  {
    return polarto(phi, rad)[1];
  }
  
  void mpush(MPoint other)
  {
    float dist=sqrt((other.getx()-getx())*(other.getx()-getx())+(other.gety()-gety())*(other.gety()-gety()));  
    //if(dist<100){rad=rad-0.4;}
    rad=rad-100/dist;
    print(dist);
    print("\n");
  }
  void mpull(MPoint other)
  {
    float dist=cos((other.getx()-getx())*(other.getx()-getx())+(other.gety()-gety())*(other.gety()-gety()));  
    //if(dist>50 && dist<100){rad=rad+0.4;}
    rad=rad+random(100)/dist;
    print(dist);
    print("\n");
  }
  
  void fix()
  {
if(rad<50){rad=random(50);}
  }
  void setpos(float t,int i)
  {
rad=sin(2*t/1000+6*PI*i/numpoint)*radbig;
  
  }
}
