PImage img;


void setup() {
  fullScreen(P2D);   
  img = loadImage("landscape.jpg");
  img.resize(width,height);  
  img.loadPixels();
}

void draw() {  
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int index = x + y * width;
      float r = red(img.pixels[index]);
      float g = green(img.pixels[index]);
      float b = blue(img.pixels[index]);
      if (r < 128 && b < 128 && g < 128) {
        img.pixels[index] = color(255);
      }
    }
  }
  updatePixels();
  
  image(img,0,0);
}
