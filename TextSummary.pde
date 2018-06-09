class TextSummary{
  //data
  float tSpeed;
  float y;
  float yStop;
  boolean g2, g3, g4, g5;
  
  // constructor
  TextSummary(){
    textAlign(CENTER);
    textSize(18);
    tSpeed = 2;
    y=0;
    yStop = 150;
    g2 = false;
    g3 = false;
    g4 = false;
    g5 = false;
  }
  
  // functions
  void display(int g, int posx, int posy){
    //print("2 =", g, "Y =", y, "Old G =", oG);
    pushMatrix();
    translate(posx, posy);
    textSize(20);
    fill(255);
    switch(g){
      case 1:
        text("Golden Knights outlast Capitals 6 - 4 in Game 1.", width/2, y);
        text("Game 1", width/2, y - 40);
        break;
      case 2:
        if (g2 == false){
          y = 0;
          g2 = true;
        }
        text("Ovechkin helps Capitals beat Golden Knights 3-2, even series", width/2, y);
        text("Game 2", width/2, y - 40);
        break;
      case 3:
        if (g3 == false){
          y = 0;
          g3 = true;
        }      
        text("Capitals up 2-1 on Vegas in Stanley Cup Final", width/2, y);
        text("Game 3", width/2, y - 40);        
        break;
      case 4:
        if (g4 == false){
          y = 0;
          g4 = true;
        }
        text("Capitals on verge of Cup after blowing out Golden Knights", width/2, y);
        text("Game 4", width/2, y - 40);        
        break;
      case 5:
        if (g5 == false){
          y = 0;
          g5 = true;
        }
        text("Capitals beat Golden Knights 4-3, win their 1st Stanley Cup", width/2, y);
        text("Game 5", width/2, y - 40);        
        break;
      default:
        text("Default", width/2, y);
        break;
    }
    popMatrix();
    if (y < yStop){
      y = y + tSpeed;
    }
  }
  
}
