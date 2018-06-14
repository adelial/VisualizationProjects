//Credit To:
//  Chapter 10, p387, Processing:  Creative Coding and Generative Art in Processing, 2

//PosterMVP creates posterized version of the supplied image
class PosterMVP {
  //class data
    //Set Washington Capital Primary Colors
  color washBlue = color(4, 30, 66);  //dark 100 total
  color washRed = color(200, 16, 46); //medium  262 total
  color washWhite = color(255, 255, 255);  //as light as light can be 765 total
  
  //x and y coordinates
  float x, y;
  
  //strings
  String text1, text2;
  
  //variable to assign Washington Capital Colors to pixels
  float rgbTot;
  
  //class constructor
  PosterMVP(){
    x = 0;
    y = 0;
    text1 = "Alex Ovechkin";
    text2 = "2018 NHL Finals MVP";
  }
  
  //Posterize Function (280, 442, )
  void display(PImage img){
    img.loadPixels();
    for (int i = 0; i < img.pixels.length; i++){
      color c = img.pixels[i];
      float rgbTot = red(c) + green(c) + blue(c);
      if (rgbTot <= 230){
        img.pixels[i] = color(washBlue);
      }
      else if (rgbTot <= 360){
        img.pixels[i] = color(washRed);
      }
      else {
        img.pixels[i] = color(washWhite);
      }
    }
    //return(img);
    img.updatePixels();
    fill(255);
    text(text1, width*0.83, height*0.67);
    text(text2, width*0.83, height*0.69);
    image(img, width*0.7, height*0.7);
    
  }
  
}
