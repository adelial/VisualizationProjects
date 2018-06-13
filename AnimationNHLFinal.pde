// MSDS 6390 - Visualization
// Assignment 5 - Pixel Updates Images
// Names: George Sturrock and Alma Lopez
//   

// Classes definition
scoreBoard gameScore;
puck hpuck;
hockeystick stick;
TextSummary gameSumm;
PosterMVP poster;
Stats seriesStats;

int ind=0; 
int score1=0, score2=0;
long lastTime;
int periodNum =0; 

PImage header, ao, cup, team, logo; 

// Games scores 
int[][] arrGames = { {4,6},{3,2},{3,1}, {6,2}, {4,3} };  // Game series final scores
        
int game=0;

void setup(){
  background(0);
  size(1400,1000);
  // Initialziation for objects/classes
  gameScore = new scoreBoard();
  hpuck = new puck();
  stick = new hockeystick();
  gameSumm = new TextSummary();
  poster = new PosterMVP();
  seriesStats = new Stats();
  
  //Load Images
  ao = loadImage("ovechkinHeadShot.png");
  cup = loadImage("Stanley_Cup.png");
  team = loadImage("blend2sm.jpg");
  header = loadImage("headerNHL.png"); 
  ind = 0;
     
}

void draw(){
  if (millis() < 50000){  // For the first screen with scores and animation
    background(#2D5F90);
  }
  image(header,width/2-header.width/2,5);
  poster.display(ao);
  seriesStats.pie();
  seriesStats.bar();
  hockeyGoal(50, 130); 
  hpuck.drawpuck();
  gameScore.display(500,500);
  stick.drawstick();
    
  // changes in the screen based on the games results
  if (millis() < 10000){
    game = 1;
    gameSumm.display(game, 40, 60);  
    gameScore.refresh(arrGames,game);
  }
  else if (millis() < 20000){
    game = 2;
    gameSumm.display(game, 40, 60);
    gameScore.refresh(arrGames,game);
  }
  else if (millis() < 30000){
    game = 3;
    gameSumm.display(game, 40, 60);
    gameScore.refresh(arrGames,game);
  }    
  else if (millis() < 40000){
    game = 4;
    gameSumm.display(game, 40, 60);
    gameScore.refresh(arrGames,game);
  }
  else if (millis() < 50000){
    game = 5;
    gameSumm.display(game, 40, 60);
    gameScore.refresh(arrGames,game);   
  }
  else
  {
   background(team);  // Winner team with Stanley Cup
   blend(cup, 160, 0, cup.width, cup.height, 0, 0, team.width, team.height, SCREEN);
  }
}

   
