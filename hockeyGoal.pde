// hockeyGoal function is used to draw the hochey goal and net in the position requested as arguments
// it calls the puck shoot method to move it
void hockeyGoal(int posx, int posy) {  
  stroke(255,0,0);
  strokeWeight(8);
  noFill();
  pushMatrix();
    translate(posx, posy);
    rect(0,0,300, 150, 10);
    fill(#2D5F90);
    arc(150,146,300,50,radians(180), PI*2);
    
    //net
    stroke(#E8E1ED);
    strokeWeight(2);
    line(3,110,23,132);
    line(3,80,42,125);
    line(3,50,65,125);
    line(3,20,88,123);
    line(13,3,110,122);
    line(38,3,135,120);
    line(65,3,160,120);
    line(92,3,185,120);
    line(122,3,210,120);
    line(155,3,235,120);
    line(185,3,265,125);
    line(210,3,292,132);
    line(235,3,297,106);
    line(255,3,297,70);
    line(275,3,297,40);
        
    line(3,20,25,3);
    line(3,45,50,3);
    line(3,72,82,3);
    line(3,100,110,3);
    line(3,130,135,3);
    line(38,125,162,3);
    line(68,123,190,3);
    line(98,122,215,3);
    line(128,122,240,3);
    line(155,120,265,3);
    line(180,120,292,3);
    line(205,120,297,23);
    line(235,120,297,53);
    line(255,123,297,82);
    line(275,125,297,105);
    
    fill(#6AB0F5);
    arc(150,148,300,75,radians(0), PI);  
    hpuck.shoot();
  popMatrix(); 
}
