//class puck 
class puck{  //Definition
  color bCollor;
  float rad;
  PVector location;  // Vector to handle location 
  PVector velocity;  // Velocity for the shoot
  PVector acceleration;  // Acceleration of the shoot 
  
  puck() {  // constructor
    location = new PVector(480, 880);   // initial location
    velocity = new PVector(-10,-50);
    acceleration = new PVector(30,30);
    bCollor = color(56,62,65);  // puck color
    rad = 15;  //puck radiuos    
  } // puck
  
  // method to draw hockey puck
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
  }  // drawpuck
  
     
 // method needed to make the shoots
  void shoot(){
    PVector scoreb = new PVector(random(260,280),170); // goal net location 
    PVector floor = new PVector(275,390);  // stick location
    
    if ((location.x < 270) && (location.x > 20)) {   // Identify the origin and shoot direct to net
       scoreb.sub(location);
       scoreb.setMag(5.5);
       acceleration = scoreb;
    
       velocity.add(acceleration);
       location.add(velocity);
       velocity.limit(random(1,15));   // random velocity
    }
    else{   // back to the stick
        floor.sub(location);
        floor.setMag(1.5);
        acceleration = floor;
        velocity.add(acceleration);
        location.add(velocity);
        velocity.limit(random(1,3));
    }
    // When the puck is in the stick another initial random location is set
    if ((location.x>270) && (location.y>385)) {
      stick.hit(100, 75, 30, 20, 10);   //hit puck 
      location.set(random(50,130),random(180,300));
    } 
  } // shoot
     
} // class puck
