class Relva {
  float posX, posY, tam;


  Relva(float x, float y) {
    posX = x;
    posY = y;
    tam = 50;
    rectMode(CENTER);
  }

  void spawnRandomRelva() {
    noStroke();
    fill(30, 100, 100);
    rect(posX, posY, tam, tam);
  }
  void spawnRelvaOnClick() {   
    noStroke();
    fill(30, 100, 100);
    rect(posX, posY, tam, tam);
  }
}
