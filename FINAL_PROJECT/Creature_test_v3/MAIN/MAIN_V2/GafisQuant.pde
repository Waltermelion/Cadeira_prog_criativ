class GafisQuant {
  float posX, posY, tam;
  float vida;
  float speed;
  int choosen;

  GafisQuant(float spawnX, float spawnY) {
    posX = spawnX;
    posY = spawnY;
    tam = 50;
    vida = 20;
    speed = 5;
    choosen = int(random(1, mm.cr.crs.size()));
  }

  void move() {
    if (choosen > mm.cr.crs.size()) {
      choosen = int(random(1, mm.cr.crs.size()));
    } else {

      if (mm.cr.crs.get(choosen-1).posX >= posX) {
        posX += speed;
      }
      if (mm.cr.crs.get(choosen-1).posX <= posX) {
        posX -= speed;
      }
      if (mm.cr.crs.get(choosen-1).posY >= posY) {
        posY += speed;
      }
      if (mm.cr.crs.get(choosen-1).posY <= posY) {
        posY -= speed;
      }
      if (mm.cr.crs.size()-1 != -1) {
        if ((mm.cr.crs.get(choosen-1).posX <= posX+tam/2) && (mm.cr.crs.get(choosen-1).posY <= posY+tam/2) && (mm.cr.crs.get(choosen-1).posY >= posY-tam/2) && (mm.cr.crs.get(choosen-1).posX >= posX-tam/2)) {

          mm.cr.crs.remove(choosen-1);
          choosen = int(random(1, mm.cr.crs.size()));
        }
      }
    }
    if (mm.cr.crs.size() == 0) {
      posY += random(-speed, speed);
      posX += random(-speed, speed);
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
