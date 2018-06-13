// TeamLogo function is used to display a manipulated logo from the winner team
// Logo was resized and visual effect with the pixels
// References: https://www.youtube.com/watch?v=j-ZLDEnhT3Q 
void teamLogo(int team) {
  if (team==2) logo= loadImage("knights.png"); // Load the image
  else logo= loadImage("capitals.png");

  logo.loadPixels();
  logo.resize(300,0);
  pushMatrix();
  translate(width/14, height/5*2.5);
  for (int i = 0; i < 5000; i++ ) {
    float x = random(logo.width);
    float y = random(logo.height);
    color c = logo.get(int(x), int(y));
    fill(c);
    noStroke();
    ellipse(x,y,5,5);
  }
  popMatrix();
}
