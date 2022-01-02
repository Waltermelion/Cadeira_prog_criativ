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
    fill(0,255,0);
    ellipse(posX, posY, tam, tam);
    move();
  }
  void move() {
    posY += random(-speed, speed);
    posX += random(-speed, speed);
    
    //No Out of bounds
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
