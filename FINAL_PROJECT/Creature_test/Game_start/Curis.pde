class Curis {
  float posX, posY, tam;
  float vida;
  float fome;

  Curis() {
    posX = width/2;
    posY = height/2;
    tam = 100;
    vida = 20;
    fome = 50;
  }

  void spawnC() {   
    fill(0);
    ellipse(posX, posY, tam, tam);
  }
}
