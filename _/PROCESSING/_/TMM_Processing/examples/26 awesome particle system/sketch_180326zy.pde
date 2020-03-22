/*
通常では右左関係なくポイントとラインが動いています。
マウスをクリックすると画面を右と左にクラスごとに分かれます。左はだんだんと一点に集中していき、
右は集まろうとしたり離れたりを繰り返して分散していきます。
*/

float[] xl = new float[(int)(random(40))];
float[] yl = new float[xl.length];
float[] xr = new float[xl.length];
float[] yr = new float[xl.length];
float[] xs = new float[xl.length];
float[] ys = new float[xl.length];

point_l[] poil = new point_l[xl.length]; //Left class
point_r[] poir = new point_r[xl.length]; //Right class

float e = random(0.1); //delay
int d = (int)(random(160)); //distance

boolean mouse = false; //mouse check

void setup() {
  size(600, 300);
  background(0);
  colorMode(RGB, 255);
  smooth();
  frameRate(120);
  noFill();

  for (int i = 0; i < xl.length; i++) {
    xl[i] = random(width); //poil x position
    yl[i] = random(height); //poil y position
    xr[i] = random(width); //poir x position
    yr[i] = random(height); //poir y position
    xs[i] = random(-3, 3); //x speed
    ys[i] = random(-3, 3); //y speed
    poil[i] =  new point_l(xl[i], yl[i], xs[i], ys[i]); //class Left object
    poir[i] =  new point_r(xr[i], yr[i], xs[i], ys[i]); //class Right object
  }
}

void draw() {
  background(0);

  //function------------------
  for (int i = 0; i < xl.length; i++) {
    poil[i].display(); //class poil - function display();
    poir[i].display(); //class poir - function display();
  }


  //line----------------------

  strokeWeight(0.3); // line weight
  for (int i = 0; i < xl.length; i++) {
    for (int j = 0; j < xl.length; j++) {

      //poil - poil line----------------------
      if (mouse) {
        stroke(255, 0, 0);
      } else {
        stroke(255);
      }
      if (dist(poil[i]._x, poil[i]._y, poil[j]._x, poil[j]._y) < d) {
        line(poil[i]._x, poil[i]._y, poil[j]._x, poil[j]._y);
      }

      //poir - poir line----------------------
      if (mouse) {
        stroke(0, 0, 255);
      } else {
        stroke(255);
      }
      if (dist(poir[i]._x, poir[i]._y, poir[j]._x, poir[j]._y) < d) {
        line(poir[i]._x, poir[i]._y, poir[j]._x, poir[j]._y);
      }

      //poir - poil line----------------------
      if (mouse == false) {
        if (mouse) {
          if (i % 2 == 0) {
            stroke(255, 0, 0);
          } else {
            stroke(0, 0, 255);
          }
        }
        if (dist(poir[i]._x, poir[i]._y, poil[j]._x, poil[j]._y) < d) {
          line(poir[i]._x, poir[i]._y, poil[j]._x, poil[j]._y);
        }
      }
    }
  }


  //point--------------------

  stroke(255);
  strokeWeight(4.5); // point weight
  for (int i = 0; i < xl.length; i++) {
    point(poil[i]._x, poil[i]._y);
    point(poir[i]._x, poir[i]._y);
  }
}

void mousePressed() {
  mouse = true; //click check == yes
}

void mouseReleased() {
  mouse = false; // click check == no
}



//class left------------------

class point_l {
  float _x, _y, _xs, _ys, _xsc, _ysc;

  point_l(float _xx, float _yy, float _xxs, float _yys) {
    _x = _xx;
    _y = _yy;
    _xs = _xxs;
    _ys = _yys;
    _xsc = _xxs;
    _ysc = _yys;
  }

  //function display------------------------
  void display() {

    _x += _xs;
    _y += _ys;

    //mouse click 
    if (mouse == true) {

      float mx = 150 - _x;
      float my = 150 - _y;

      if (_x > 225 || _x < 75) {
        _x += mx * 0.05;
        _xs = -_xs;
      }
      if (_y > 225 || _y < 75) {
        _y += my * 0.05;
        _ys = -_ys;
      }

      if (_x <= 180 && _x >= 120 && _y <= 180 && _y >= 120) {
        _x += mx * e;
        _xs = -_xs;
        _y += my * e;
        _ys = -_ys;
      }
    }

    float xp, yp;
    xp = random(-5, 5);
    yp = random(-5, 5);

    //speed up
    if (frameCount % 140 == 0) {
      _xs += xp;
      _ys += yp;
    }
    if (frameCount % 160 == 30) {
      _xs = _xsc;
      _ys = _ysc;
    }
    
    //rebound
    if (_x > width || _x < 0) {
      _xs = -_xs;
    }
    if (_y > height || _y < 0) {
      _ys = -_ys;
    }
  }
}



//class right-----------------

class point_r {
  float _x, _y, _xs, _ys, _xsc, _ysc;

  point_r(float _xx, float _yy, float _xxs, float _yys) {
    _x = _xx;
    _y = _yy;
    _xs = _xxs;
    _ys = _yys;
    _xsc = _xxs;
    _ysc = _yys;
  }

  //function display------------------------
  void display() {

    float xp, yp;
    xp = random(-5, 5);
    yp = random(-5, 5);

    _x += _xs;
    _y += _ys;

    //mouse click
    if (mouse == true) {

      float mx = 400 - _x;
      float mxt = 450 - _x;
      float myt = 150 - _y;

      if (_x >= random(300)) {
        _x += mx * random(5);
        _xs = -_xs;
      }
      if (frameCount % random(300) < 20) {
        _x += mxt * e;
        _y += myt * e;
      }
    }

    //speed up
    if (mouse == false) {
      if (frameCount % random(300) == 0) {
        _xs += xp;
        _ys += yp;
      }
      if (frameCount % 160 == (int)(random(30))) {
        _xs = _xsc;
        _ys = _ysc;
      }
    }

    //rebound
    if (_x > width || _x > random(100)) {
      _xs = -_xs;
    }
    if (_y > height || _y > random(10)) {
      _ys = -_ys;
    }
  }
}
