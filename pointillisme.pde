PImage img;
int pointSize = 8;

void setup(){
  size(200, 200);
  img = loadImage("images.jpg");
  background(0);
  smooth();
}

void draw(){
  // Random location
  int x = (int)random(img.width);
  int y = (int)random(img.height);
  
  int loc = x + y * img.width;
  
  // Values in the image
  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);
  noStroke();
  
  // Draw an ellipse
  fill(r,g,b,100);
  ellipse(x,y,pointSize,pointSize);
}
