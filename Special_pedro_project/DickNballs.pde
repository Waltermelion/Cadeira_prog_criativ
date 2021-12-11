class DickNballs {
  float posX, posY, tam, rdm1, rdm2, rdm3, rdm4, rdm5, rdm6;

  DickNballs() {
    posX = mouseX;
    posY = height/2;
    tam = 100;
    rdm1 = random(5,10);
    rdm2 = random(5,10);
    rdm3 = random(5,10);
    rdm4 = random(5,10);
    rdm5 = random(5,10);
    rdm6 = random(5,10);
  }

  void desenha() {
    noStroke();
    posX = mouseX;
    fill(165, 126, 110);
    ellipse(posX, posY, tam, tam);
    ellipse(posX-50, posY, tam, tam+5);
    rect(posX, posY-100, tam+100, tam);
    ellipse(posX, posY-50, tam, tam);
    ellipse(posX+200, posY-50, tam, tam);
    fill(0);
    ellipse(posX-10, posY, rdm1, rdm2);
    ellipse(posX+10, posY-5, rdm3, rdm4);
    ellipse(posX-5, posY+10, rdm5, rdm6);
    
    ellipse(posX-60, posY, rdm1, rdm2);
    ellipse(posX-40, posY-5, rdm3, rdm4);
    ellipse(posX-45, posY+10, rdm5, rdm6);
  }
}
