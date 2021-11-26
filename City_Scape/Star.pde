class Star {
  float posX, posY, tam;

  Star() {
    posX = random(width);
    posY = random(height/2);
    tam = random(5);
  }

  void desenha() {
    fill(0, 0, 100);
    noStroke();
    ellipse(posX, posY, tam, tam);    
  }
}
