class Casa {
  float posX;
  float posY;
  float tam;
  
  Casa(float x, float y, float t) {
    posX = x;
    posY = y;
    tam = t;
  }
  
  void desenha(){
    fill(#675A3A);
    triangle(posX, posY, posX+tam/2, posY-tam/2, posX+tam, posY);
    rect(posX, posY, tam, tam);
  }
}
