// MSDS 6390 - Visualization
// Assignment 4   - Animation 
// Names: George Sturrock and Alma Lopez
//   

//int[][] arrG1, arrG2, arrG3, arrG4, arrG5, arrG6, arrG7;
//Declare Classes

//scoreBoard gameScore;
puck hpuck;
hockeystick stick;
IntroText intro;  //GS

int ind=0; 
int score1=0, score2=0;
long lastTime;
int periodNum =0; 
PImage header; 
// Games scores
int[][] arrG1 = { {2,2},{1,1},{1,3} },  //Game 1 per periods
        arrG2 = { {1,1},{2,1},{0,0} },  //Game 2 per periods
        arrG3 = { {0,0},{0,2},{1,1} },  //Game 3 per periods
        arrG4 = { {0,3},{0,1},{2,2} },  //Game 4 per periods
        arrG5 = { {0,0},{2,3},{2,0} };  //Game 5 per periods
    //    arrG6 = { {22,39},{29,22},{33,16},{31,9} },  //Game 6 per periods
     //   arrG7 = { {19,24},{24,30},{33,15},{25,23} };  //Game 7 per periods



//Declare and Construct Class
//TextSummary gameSumm = new TextSummary();
TextSummary gameSumm;

int game=0;

void setup(){
  background(0);
  size(1400,1000, P3D);
  //size(1400,1000);
  //size(600, 400);
 // gameScore = new scoreBoard();
  hpuck = new puck();
  stick = new hockeystick();

  gameSumm = new TextSummary();
  
  header = loadImage("headerNHL.png");  //for background
  ind = 0;
     
}

void draw(){
 background(#2D5F90);
  image(header,width/2-header.width/2,5);
  
  hockeyGoal(width/4, height/5*3);
  hpuck.drawpuck();
  stick.drawstick(width/4+250,height/5*3+100);
  if (millis() < 2400){
    game = 1;
    hpuck.shoot(350,600,2);
   //teamLogo();
  }
  else if (millis() < 20000){
    game = 2;
   // hpuck.shoot(350,600);
  }
  else if (millis() < 30000){
    game = 3;
     //hpuck.shoot(350,600);
  }    
  else if (millis() < 40000){
    game = 4;
     //hpuck.shoot(350,600);
  }
  else {
    game = 5;
   // hpuck.shoot(350,600);
  }  
}
 
 // hpuck.drawPuck(1, 30);
 // gameScore.display(60,165);
   
