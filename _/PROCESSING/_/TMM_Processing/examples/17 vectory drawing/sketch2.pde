int numPoints =16;

PVector[] points = new PVector[numPoints];

void setup()
{
    size( 300, 300 );
    
    for (int i = 0; i < numPoints; i++) {
        points[i] = new PVector( random(width), random(height) );
    }
    
    //noLoop();
    
}

void draw()
{
    background(255);
    noFill();
    for (int i = 0; i < numPoints; i++) {
        for (int j = 0; j < numPoints; j++) {
            strokeWeight(1);
            if ( j != i ) {
                float dst = dist( points[i].x, points[i].y, points[j].x, points[j].y );
                if ( dst < 255 ) {
                    stroke( 0);
                    line( points[i].x, points[i].y, points[j].x, points[j].y );
                }                
            }
        }
        stroke( 0 );
        strokeWeight(1);
        point( points[i].x, points[i].y );
  }  
}
