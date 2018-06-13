//Credit to:
//https://processing.org/examples/piechart.html
//https://processing.org/reference/createGraphics_.html

class Stats{
//Data
float x, y;
float lastAngle;
color washRed = color(200, 16, 46);
color lasGold = color(185,151,91);
int[] angles1 = { 211, 149 };
int[] angles2 = { 168, 192 };
color[] teamCol = { washRed, lasGold };
int diam = 150;
float[] savePct = { 0.916, 0.853 };
float barH = (height*0.95 - height*0.73);

//Constructor
  Stats(){
    x = width/2;
    y =0;
    lastAngle = 0;
    textSize(10);
  }

//functions
  void bar(){
    //Save Percentage
    stroke(255);
    //bar chart frame
  //  println("Bar Chart Height:", (height*0.73 - height*0.95));
    line(width*0.84, height*0.47, width*0.84, height*0.62);
    line(width*0.84, height*0.62, width*0.96, height*0.62);
    fill(255);
    text("Save Percentage", width*0.9, height*0.45);
    //bar chart data
    fill(washRed);
    noStroke();
    rect(width*0.86, height*0.48, 40, height*0.14);
    fill(lasGold);
    rect(width*0.90, height*0.50, 40, height*0.12);
  }

  void pie(){
    //Total Goals
    fill(255);
    text("Total Goals", width*0.9, height*0.05);
    lastAngle = 0; //<>//
    for (int i = 0; i < angles1.length; i++){ //<>//
      fill(teamCol[i]); //<>//
      arc(width*0.9, height*0.13, diam, diam, lastAngle, lastAngle + radians(angles1[i])); //<>//
      lastAngle += radians(angles1[i]); //<>//
    }
    
  //  //Total Shots on Goal
    lastAngle = 0; //<>//
    fill(255);
    text("Total Shots on Goal", width*0.9, height*0.25);
    for (int i = 0; i < angles2.length; i++){ //<>//
      fill(teamCol[i]); //<>//
      arc(width*0.9, height*0.33, diam, diam, lastAngle, lastAngle + radians(angles2[i])); //<>//
      lastAngle += radians(angles2[i]); //<>//
    }
  }
}
