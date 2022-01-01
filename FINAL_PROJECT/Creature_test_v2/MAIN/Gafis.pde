class Gafis {
  float posX, posY, tam;
  float vida;
  float speed;

  Gafis(int spawnX, int spawnY) {
    posX = float(spawnX);
    posY = float(spawnY);
    tam = 50;
    vida = 20;
    speed = 10;
  }

  void mostraG() {
    fill(0);
    ellipse(posX, posY, tam, tam);
    search();
  }
  void search() {
    if (c.posX >= posX){
      posX += speed;
    }
    if (c.posX <= posX){
      posX -= speed;
    }
    if (c.posY >= posY){
      posY += speed;
    }
    if (c.posY <= posY){
      posY -= speed;
    }
  }
}
