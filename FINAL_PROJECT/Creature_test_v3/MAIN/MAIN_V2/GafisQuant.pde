class GafisQuant {
  float posX, posY, tam;
  float vida;
  float speed;

  GafisQuant(float spawnX, float spawnY) {
    posX = spawnX;
    posY = spawnY;
    tam = 50;
    vida = 20;
    speed = 10;
  }

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
  }

  


  void display() {
    stroke(255, 255);
    fill(255, 0, 255);
    ellipse(posX, posY, tam, tam);
    move();
  }
}
