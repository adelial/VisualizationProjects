void teamLogo() {
PImage img1, img2;       // The source image
int cellsize = 2; // Dimensions of each cell in the grid
int cols, rows;   // Number of columns and rows in our system

img1= loadImage("knights.png"); // Load the image
cols = img1.width/cellsize;              // Calculate # of columns
rows = img1.height/cellsize;  

img1.loadPixels();
//img2.loadPixels();

  // Begin loop for columns
  for (int i = 0; i < cols; i++ ) {
    // Begin loop for rows
    for (int j = 0; j < rows; j++ ) {
      int x = i*cellsize + cellsize/2; // x position
      int y = j*cellsize + cellsize/2; // y position
      int loc = x + y*width;           // Pixel array location
      color c = img1.pixels[loc];       // Grab the color
      // Map brightness to a z position as a function of mouseX
      float z = map(brightness(img1.pixels[loc]), 0, 255, 0, mouseX);
      // Translate to the location, set fill and stroke, and draw the rect
      pushMatrix();
      translate(x, y, z); 
      fill(c);
      noStroke();
      rectMode(CENTER);
      rect(0, 0, cellsize, cellsize);
      popMatrix();
    }
  }
}
