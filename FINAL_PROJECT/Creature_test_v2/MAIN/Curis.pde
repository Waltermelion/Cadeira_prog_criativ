class Curis {
  float posX, posY, tam;
  float vida;
  float speed;

  Curis(int spawnX, int spawnY) {
    posX = float(spawnX);
    posY = float(spawnY);
    tam = 20;
    vida = 20;
    speed = 10;
  }
  
  void mostraC() {
    fill(0);
    ellipse(posX, posY, tam, tam);
    move();
  }
  void move() {
    posY += random(-speed, speed);

    posX += random(-speed, speed);
  }
}
