PImage img;

void setup() {
  fullScreen(P2D);   
  img = loadImage("landscape.jpg");
  img.resize(width, height);
}

void draw() {  
  img.loadPixels();
  for (int y = 0; y<img.height; y++) {
    int index = mouseX + mouseY * img.width;
    img.pixels[mouseX+y*img.width] = color(img.pixels[index]);
  }
  img.updatePixels();
  image(img, 0, 0);
  //teste123;
}
