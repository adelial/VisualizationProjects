//class hockey Stick
class hockeystick{  //Definition
  color bCollor;
  float rad;
  PVector location;  // Vector to handle location 
  PVector velocity;  // Velocity for the shoot
  PVector acceleration;  // Acceleration of the shoot 
  
  hockeystick() {  // constructor
    location = new PVector(width/8-45,205);   // initial location
    velocity = new PVector(-10,-50);
    acceleration = new PVector(30,30);
    bCollor = color(0,0,0);  // stick color    
  } // puck
  
  // method to display ball
  void drawstick() {
    fill(bCollor);
    noStroke();
    pushMatrix();
      translate(location.x,location.y);
      pushMatrix();  // for the rotation
      rotate (radians(55));
      rect(0,0,230,10,12);
      popMatrix();
      rect(120,185,55,15,15);         
    popMatrix();
  }  // draw
  
  // method use to show the hit effect documented in 
  // https://processing.org/examples/star.html 
  void hit (float x, float y, float radius1, float radius2, int npoints) {
     fill(#D8F523);
     float angle = TWO_PI / npoints;
     float halfAngle = angle/2.0;
     noStroke();
     pushMatrix();
       translate(location.x,location.y-10);
       beginShape();
       for (float a = 0; a < TWO_PI; a += angle) {
         float sx = x + cos(a) * radius2;
         float sy = y + sin(a) * radius2;
         vertex(sx, sy);
         sx = x + cos(a+halfAngle) * radius1;
         sy = y + sin(a+halfAngle) * radius1;
         vertex(sx, sy);
      }
      endShape(CLOSE);     
    popMatrix();
  } // hit

} // hockeystick
