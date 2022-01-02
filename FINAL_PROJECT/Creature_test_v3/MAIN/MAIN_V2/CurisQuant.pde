class PVector {
  float posX, posY, tam;
  float vida;
  float speed;

  PVector(float spawnX, float spawnY) {
    posX = spawnX;
    posY = spawnY;
    tam = 20;
    vida = 20;
    speed = 10;
  }

  void move() {
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
  
  void display() {
    stroke(255, 255);
    fill(0, 255, 255);
    ellipse(posX, posY, tam, tam);
    move();
  }
}
