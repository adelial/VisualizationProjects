//class puck
class puck{  //Definition
  color bCollor;
  float rad;
  PVector location;  // Vector to handle location 
  PVector velocity;  // Velocity for the shoot
  PVector acceleration;  // Acceleration of the shoot 
  
  //width/2, height/5*3
  
  puck() {  // constructor
    location = new PVector(480, 880,2);   // initial location
    velocity = new PVector(-1,-2,1);
    acceleration = new PVector(5,7.5,1);
    bCollor = color(56,62,65);  // puck color
    rad = 15;  //puck radiuos    
  } // puck
  
  // method to display ball
  void drawpuck() {
    fill(bCollor);
    noStroke();
    ellipse(location.x,location.y,2*rad,rad);  // fill puck
    stroke(0);
    strokeWeight(1);
    ellipse(location.x,location.y+10,2*rad,rad);
    noStroke();
    ellipse(location.x,location.y+7,2*rad,rad);  // fill puck
    stroke(0);
    strokeWeight(1);
    ellipse(location.x,location.y,2*rad,rad);    
    line(location.x-rad,location.y,location.x-rad,location.y+rad/2);
    line(location.x+rad,location.y,location.x+rad,location.y+rad/2); 
  }  // display
  
     
     
     
  // method needed to make the shoots
  void shoot(int posx, int posy, int num){
    PVector scoreb = new PVector(random(360,650),random(610,690),10); // score basket location 
    PVector initial = new PVector(450,885,10);  // floor location

   // if ((location.x > 350) && (location.x < 600)) {   // Identify the origin and shoot direct to net
   for (int i=0; i<num; i++) {
       scoreb.sub(location);
       scoreb.setMag(9.5);
       acceleration = scoreb;
    
       velocity.add(acceleration);
       location.add(velocity);
       velocity.limit(0.1);   // random velocity
  
       initial.sub(location);
       initial.setMag(1.5);
       acceleration = initial;
       velocity.add(acceleration);
       location.add(velocity);
      //  velocity.limit(random(1,2));
    }
    // When the ball is in the floor another initial random location is set
    if ((location.x>480) && (location.y<800)) {
     // location.set(random(380,600),880);
    } 
  } // shoot
} // class ball
