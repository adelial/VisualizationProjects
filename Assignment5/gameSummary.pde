//Declare and Construct Class
//TextSummary gameSumm = new TextSummary();

TextSummary gameSumm;

int game=0;

void setup(){
  background(0);
  size(600, 400);
  gameSumm = new TextSummary();
}

void draw(){ //<>//
  background(0);
  if (millis() < 10000){ //<>//
    game = 1; //<>//
    gameSumm.display(game); //<>//
  }
  else if (millis() < 20000){
    game = 2;
    gameSumm.display(game);
  }
  else if (millis() < 30000){
    game = 3;
    gameSumm.display(game);
  }    
  else if (millis() < 40000){
    game = 4;
    gameSumm.display(game);
  }
  else {
    game = 5;
    gameSumm.display(game);
  }  
  println(game);
}
