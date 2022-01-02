class GafisQuant {
  float posX, posY, tam;
  float vida;
  float speed;

  GafisQuant(float spawnX, float spawnY) {
    posX = spawnX;
    posY = spawnY;
    tam = 50;
    vida = 20;
    speed = 5;
  }
 /*
 //NÃO DELETAR ( No Out Of Bounds )
 if (x < t/2) {
      x = t/2;
    }
    if (x > width-t/2) {
      x = width-t/2;
    }
    if (y > height-t/2) {
      y = height-t/2;
    }
    if (y < t/2) {
      y = t/2;
    }*/
  void move() {   
    for(int i = 0; i < mm.cr.crs.size(); i++){
if (mm.cr.crs.get(i).posX >= posX){
      posX += speed;
    }
    if (mm.cr.crs.get(i).posX <= posX){
      posX -= speed;
    }
    if (mm.cr.crs.get(i).posY >= posY){
      posY += speed;
    }
    if (mm.cr.crs.get(i).posY <= posY){
      posY -= speed;
    }
  }
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
    fill(255, 0, 255);
    ellipse(posX, posY, tam, tam);
    move();
  }
}
