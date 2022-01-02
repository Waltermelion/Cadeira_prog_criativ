class Rakis {
  float posX, posY, tam;
  float vida;
  float speed;

  Rakis(int spawnX, int spawnY) {
    posX = float(spawnX);
    posY = float(spawnY);
    tam = 100;
    vida = 20;
    speed = 10;
  }

  void mostraR() {
    fill(0);
    ellipse(posX, posY, tam, tam);
    search();
  }
  void search() {
    posY += random(-speed, speed);
    posX += random(-speed, speed);

    if (posX < tam/2) {
      posX = tam/2;
    }
    if (posX > width-tam/2) {
      posX = width-tam/2;
    }
    if (posY > height-tam/2) {
      posY = height-tam/2;
    }
    if (posY < tam/2) {
      posY = tam/2;
    }
  }
}
