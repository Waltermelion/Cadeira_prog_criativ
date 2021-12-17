class Curis {
  float posX, posY, tam;
  float vida;
  float fome;

  Curis() {
    posX = random(width);
    posY = random(height);
    tam = 100;
    vida = 20;
    fome = 50;
  }

  void spawnC() {
    
    if (posX < tam/2) {
      posX = tam/2;
    }  if (posX > width-tam/2) {
      posX = width-tam/2;
    }  if (posY > height-tam/2) {
      posY = height-tam/2;
    }  if (posY < tam/2) {
      posY = tam/2;
    }
    fill(0);
    ellipse(posX, posY, tam, tam);
  }
}
