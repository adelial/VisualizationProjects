//class scoreBoard
class scoreBoard {
  int spacew, spaceh;
  color perimColor;
  int x, y;
  
  
  scoreBoard() {  // constructor
    spacew = width/3;
    spaceh = width/3;
    perimColor = color(255);    
  }
  
  //method display for initial
  void display(int cordx, int cordy) {
    x = cordx;
    y = cordy;
    pushMatrix();
    translate (x, y);
    strokeWeight(5);
    stroke(perimColor);
    noFill();
    rect(10, 20, spacew-spacew/5, spaceh/4*2.4,10); //spacew-spacew/10 = 420, spaceh/4*3 = 340
    rect(spacew/8+10, spaceh/4, spacew/6, spacew/6);
    rect((spacew/8)*4, spaceh/4, spacew/6, spacew/6);
    fill(232, 146, 7);
    textSize(32);
    text("Final Score", (spacew/2)*.8, spaceh/6);
    textSize(24);
    text("Capitals", spacew/4*.9, (spaceh/8)*4.2);
    text("Knights", spacew/4*2.4, (spaceh/8)*4.2); 
    fill(#59E357);
    textSize(42);
    text("0", spacew/5+19, spaceh/2*0.7+5);   // team 1
    text("0", spacew/5*2.9, spaceh/2*0.7+5);  // team 2
    popMatrix();
  } // end display
  
  // refresh to update based on selected game
  void refresh(int[][] arrayG, int game) {    
    pushMatrix();
      translate (x, y);
      textSize(32);
      fill(0);
      rect(spacew/8+12, spaceh/4+2, spacew/6-4, spacew/6-4);
      rect((spacew/8)*4+2, spaceh/4+2, spacew/6-4, spacew/6-4);
      fill(#59E357);
      textSize(42);
      text(arrayG[game-1][0], spacew/5+19, spaceh/2*0.7+5);   // team 1 - Washington
      text(arrayG[game-1][1], spacew/5*2.9, spaceh/2*0.7+5);  // team 2 - Vegas
    popMatrix();   
    textSize(20);
    
    // Displays the team logo winner of the game
    if (arrayG[game-1][0] > arrayG[game-1][1]) teamLogo(1);
    else teamLogo(2);   
  }
}
