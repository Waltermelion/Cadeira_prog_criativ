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
  }
}
