class Relva {
  float posX, posY, tam;


  Relva() {
    posX = random(width);
    posY = random(height);
    tam = 50;
  }

  void spawnRandomRelva() {
    noStroke();
    fill(30, 100, 100);
    rect(posX, posY, tam, tam);
  }
  void spawnRelvaOnClick() {
    posX = mouseX;
    posY = mouseY;
    noStroke();
    fill(30, 100, 100);
    rect(posX, posY, tam, tam);
  }
}
