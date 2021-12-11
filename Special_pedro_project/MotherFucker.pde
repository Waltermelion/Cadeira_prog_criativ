class MotherFucker {
  float posX, posY, tam;

  MotherFucker() {
    posX = width-150;
    posY = height/2;
    tam = 200;    
  }

  void desenha() {
    background(255);
    fill(255, 195, 170);
    ellipse(posX, posY, tam, tam);
    fill(90,69,60);
    ellipse(posX-50, posY-10, tam-170, tam-150);
    ellipse(posX, posY-10, tam-170, tam-150);
    fill(0);
    ellipse(posX, posY+50, tam-170, tam-170);
  }
}
