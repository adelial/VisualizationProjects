void hockeyGoal(int posx, int posy) {
  
  stroke(255,0,0);
  strokeWeight(8);
  noFill();
  pushMatrix();
    translate(posx, posy,-10);
    rect(0,0,300, 150, 10);
    fill(#7030A5);
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
  popMatrix();
  
}


void basket(){
  int cwidth = width/3;
  int cheight = height/3;
  
  // basket
  stroke(255,0,0);
  strokeWeight(4);
  ellipse(280, 90, 85, 20);
  stroke(255);
  strokeWeight(3);
  ellipse(280, 110, 75, 10);
  ellipse(280, 130, 65, 10);
  line(238, 90, 248, 130);
  line(322, 90, 312, 130);
  line(265, 100, 265, 135);
  line(300, 100, 300, 135);
  strokeWeight(10);
  stroke(64,62,124);
  line(325, 10, 325, 120);
  noStroke();
  fill(64,62,124);
  rect(330,90,60, 20);
  fill(0);
  pushMatrix();
    translate(375,105);
    rotate(-PI/4);
    rect(0,0,20,190);
  popMatrix();  
}
