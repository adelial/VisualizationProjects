//Declare and Construct Classes
//PosterMVP poster;
//poster = new PosterMVP();
PosterMVP poster = new PosterMVP();

void setup(){
  background(0);
  size(1400,1000);
  
  //Load and Posterize Alex Ovechkin
  PImage ao = loadImage("ovechkinHeadShot.png");
  poster.display(ao);
  
}
