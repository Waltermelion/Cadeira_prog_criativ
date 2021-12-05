class Nuvem {
  PImage img;
  float posX, posY, vel;
  Nuvem(String imagem) {
    img = loadImage(imagem);
    posX = width+img.width;
    posY = random(height);
    vel = random(2, 10);
    imageMode(CENTER);
  }

  void desenha() {
    image(img, posX, posY);
    posX -= vel;
    if (posX <= -img.width/2) {
      posX = width+img.width/2;
      posY = random(height);
      vel = random(2, 10);
    }
  }
}
