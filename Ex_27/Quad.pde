class Quad {
float posX, posY, tam;

  Quad() {
    posX = 0;
    posY = 0;
    tam = 50;
    
  }
  
  void desenha(float y,float x){
  posY = y;
  posX = x;
  noStroke();
  fill(0);
  rect(posX,posY,tam,tam);  
  }
}
