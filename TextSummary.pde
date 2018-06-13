// Games summary information source: http://www.espn.com/nhl/

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
        text("Vegas is aiming to be the first franchise in a major North American", width/2, y+25); 
        text("professional league to win a title in its first season", width/2, y+50);
        text("since the 1950 Cleveland Browns, who entered the NFL as a ", width/2, y+75);
        text("fully formed team after four seasons in the AAFC.", width/2, y+100);
        text("Game 1", width/2, y - 40);
        break;
      case 2:
        if (g2 == false){
          y = 0;
          g2 = true;
        }
        text("Ovechkin helps Capitals beat Golden Knights 3-2, even series", width/2, y);
        text("Alex Ovechkin scored and blocked a shot in the second period", width/2, y+25);
        text("and Braden Holtby made spectacular saves, lifting ", width/2, y+50);
        text("the Washington Capitals to a series-tying 3-2", width/2, y+75); 
        text("win over the Vegas Golden Knights.", width/2, y+100); 
        text("Game 2", width/2, y - 40);
        break;
      case 3:
        if (g3 == false){
          y = 0;
          g3 = true;
        }      
        text("Capitals up 2-1 on Vegas in Stanley Cup Final", width/2, y);
        text("Vegas built some momentum, but Devante Smith-Pelly gave the", width/2, y+25);
        text("Capitals an insurance goal with 6:07 left after Jay Beagle", width/2, y+50);
        text("took the puck away from Shea Theodore on the forecheck and found", width/2, y+75);
        text("his teammate skating in alone on Fleury. Vegas pulled Fleury for", width/2, y+100);
        text("more than two minutes at the end of the game but couldn't break through.", width/2, y+125);
        text("Game 3", width/2, y - 40);        
        break;
      case 4:
        if (g4 == false){
          y = 0;
          g4 = true;
        }
        text("Capitals on verge of Cup after blowing out Golden Knights", width/2, y);
        text("The Washington Capitals are one win away from the first Stanley Cup", width/2, y+25);
        text("in franchise history after a 6-2 blowout of the Vegas Golden Knights", width/2, y+50);
        text("in Game 4 on Monday night gave them a commanding 3-1 series lead.", width/2, y+75);
        text("Game 4", width/2, y - 40);        
        break;
      case 5:
        if (g5 == false){
          y = 0;
          g5 = true;
        }
        text("Capitals beat Golden Knights 4-3, win their 1st Stanley Cup", width/2, y);
        text("Washington is the 19th active franchise to win the Stanley Cup.", width/2, y+25);
        text("The Caps were tied for the fifth-longest active Cup drought with", width/2, y+50);
        text("Philadelphia, which won it in 1974.", width/2, y+75);
        text("Ovechkin has 26 points in 26 potential series-clinching games in his career.", width/2, y+100);
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
