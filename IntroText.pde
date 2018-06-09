class IntroText{
  // class data
  float x, y;
  float itSpeed;
  float inc; //incrementor
  
  //class constructor
  IntroText(){
    textMode(MODEL);
    textAlign(CENTER);
    textSize(28);
    x = width / 2;
    y = height - 50;
    itSpeed = 0.8;
    inc = 15;
  }
  
  //class functions
  void display(){
    //pushMatrix();
    text("2018 Western Conference Finals", x, y);
    text("Golden State Warriors vs Houston Rockets", x, y+inc*5);
    text("Golden State and Houston waged a 7 game battle", x, y+inc*15);
    text("over a two week period.", x, y+inc*20);
    text("At the same time, two ambitious MSDS Students at SMU", x, y+inc*30);
    text("forged a partnership to wage an equally epic war on", x, y+inc*35);
    text("Visualization of Information Assignments.", x, y+inc*40);
    text("Seriously, it's war!", x, y+inc*50);    
    //text("THIS ISN'T A LAUGHING MATTER!", x, y+inc*60);
    text("While the two MSDS students were partners in", x, y+inc*60);  
    text("class, they supported rival teams.", x, y+inc*65);
    text("How will this be chronicled using Processing?", x, y+inc*70);
    text("A 15 minute, fully animated cartoon?", x, y+inc*80);
    text("A bunch of stick figures?", x, y+inc*90);
    text("A self portrait using 2D primitives?", x, y+inc*100);
    text("No, no, and no.", x, y+inc*110);
    text("An interactive dashboard.", x, y+inc*120);
    //popMatrix();
    y = y - itSpeed;        
  }
}
