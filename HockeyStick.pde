//class puck
class hockeystick{  //Definition
  color bCollor;
  float rad;
  PVector location;  // Vector to handle location 
  PVector velocity;  // Velocity for the shoot
  PVector acceleration;  // Acceleration of the shoot 
  
  hockeystick() {  // constructor
    location = new PVector(40,200);   // initial location
    velocity = new PVector(-10,-50);
    acceleration = new PVector(30,30);
    bCollor = color(0,0,0);  // puck color
    rad = 30;  //puck radiuos    
  } // puck
  
  // method to display ball
  void drawstick(int posx, int posy) {
    fill(bCollor);
    noStroke();
    translate(posx, posy, 5);
    pushMatrix();
     pushMatrix();
      rotate (radians(110));
      rect(0,0,230,10,12);
     popMatrix();
   // translate(posx-200, posy);
   
    beginShape();   // right side
      curveVertex(-95,200);
      curveVertex(-125,200);
      curveVertex(-135,215);
      curveVertex(-95,215);
      curveVertex(-75,215);
      curveVertex(-75,215);
      curveVertex(-75,215);
      curveVertex(-75,205);
      curveVertex(-95,200);
      curveVertex(-95,200);
      curveVertex(-95,200);
    endShape();
    
   // line(50,0, 0,60);
    //line(posx+rad,posy, posx+rad, posy+rad/2);
    popMatrix();
  }  // draw
  
}
