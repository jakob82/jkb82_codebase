//polar
float speedfactor=random(PI);
float radbig=random(200);
float radpoint=random(10);
int numpoint=(int)(random(15))+5;
float t=0;
float prevt=0;
int numgif=0;
MPoint[] points=new MPoint[numpoint];
MPoint orbit;
MPoint orbit2;
int it=0;
int threshold=100;
boolean tF;
int i2=0, i3=0, i4=0;
float ranNum=0;
int color1=0, color2=255;
color c1=color1;
color c2=color1;
color c3=color2;
color c4=color1;

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
  for (int i = 0; i < points.length; i++) {points[i] = new MPoint(i*2*PI/numpoint, radbig, radpoint);} it++; 
  if(it>threshold) {
    if(it==0) {tF=true; it++; i2=0; i3=0; i4=0;}
    for (int i = 0; i < points.length; i++) 
    {points[i] = new MPoint(i*2*PI/numpoint, radbig, radpoint);}
    orbit=new MPoint(PI*0.25, radbig*1, radpoint);
    orbit2=new MPoint(PI*3/4, radbig*0.5, radpoint);
    it=0; speedfactor=random(PI); radbig=random(200);
    radpoint=random(10); numpoint=(int)(random(10))+5;
    if(it==0) {tF=true; it++; i2=0; i3=0; i4=0;} if(it!=0) {tF=false; it++;}
    threshold=(int)(random(50)); ranNum=random(100);  
}

  if(ranNum<50) {
    color1=0;  color2=255;
    c1=color1; c2=color1;
    c3=color2; c4=color1;
  }

  if(ranNum>50) {
    color1=255; color2=0;
    c1=color1; c2=color1;
    c3=color2; c4=color1;
  }


   println(threshold);
   t=millis()*speedfactor;
   
  translate(width/2, height/2);
  background(c4);
  fill(c1);
  for (i2=0;i2<points.length;i2=i2+1) {
    points[i2].setpos(t,i2);
    points[i2].display();
  }
  orbit.phi=orbit.phi-0.01;
  orbit2.phi=orbit2.phi+0.01;
 for (i3=0; i3<points.length; i3++) {
    stroke(c3);
    strokeWeight(numpoint*0.1);
 line(points[i3].getx(),points[i3].gety(),points[(i3+18)%numpoint].getx(),points[(i3+18)%numpoint].gety()) ;
    strokeWeight(1);
    noStroke();
     if(tF!=false) {it++; i2=0; i3=0; i4=0;}

}
  if (numgif<64){ prevt=t;
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
