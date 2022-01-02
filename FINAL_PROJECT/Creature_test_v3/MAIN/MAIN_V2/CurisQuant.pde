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
  }
  
  void display() {
    stroke(255, 255);
    fill(0, 255, 255);
    ellipse(posX, posY, tam, tam);
    move();
  }
}
