class Curis {
  float posX, posY, tam;
  float vida;
  float fome;

  Curis(float x, float y, float t) {
    posX = x;
    posY = y;
    tam = t;
    vida = 20;
    fome = 50;
  }

  void spawnC() {
    fill(255,0,0);
    ellipse(posX, posY, tam, tam);
  }
}
