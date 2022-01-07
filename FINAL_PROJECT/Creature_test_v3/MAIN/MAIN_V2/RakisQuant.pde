class RakisQuant {
  float posX, posY, tam;
  float vida;
  float speed;
  int choosenSer, choosenTipo;//qual ser do array escolhes; Qual tipo de ser escolhes(Curis ou Gafis)

  RakisQuant(float spawnX, float spawnY) {
    posX = spawnX;
    posY = spawnY;
    tam = 100;
    vida = 20;
    speed = 3;
    choosenTipo = int(random(1, 20));
    choosenSer = int(random(1, mm.cr.crs.size()));
  }

  void move() {
    if (choosenTipo <= 10) {
      if (choosenSer > mm.cr.crs.size()) {
        choosenSer = int(random(1, mm.cr.crs.size()));
      } else {

        if (mm.cr.crs.get(choosenSer-1).posX >= posX) {
          posX += speed;
        }
        if (mm.cr.crs.get(choosenSer-1).posX <= posX) {
          posX -= speed;
        }
        if (mm.cr.crs.get(choosenSer-1).posY >= posY) {
          posY += speed;
        }
        if (mm.cr.crs.get(choosenSer-1).posY <= posY) {
          posY -= speed;
        }
        if (mm.cr.crs.size()-1 != -1) {
          if ((mm.cr.crs.get(choosenSer-1).posX <= posX+tam/2) && (mm.cr.crs.get(choosenSer-1).posY <= posY+tam/2) && (mm.cr.crs.get(choosenSer-1).posY >= posY-tam/2) && (mm.cr.crs.get(choosenSer-1).posX >= posX-tam/2)) {

            mm.cr.crs.remove(choosenSer-1);
            choosenSer = int(random(1, mm.cr.crs.size()));
            choosenTipo = int(random(0, 1));
          }
        }
      }
    }
    if (mm.cr.crs.size() == 0){
      choosenTipo = 15;
    }
    if (choosenTipo >= 11) {  ////////////ESCOLHEU O GAFIS
      if (choosenSer > mm.gf.gfs.size()) {
        choosenSer = int(random(1, mm.gf.gfs.size()));
      } else {

        if (mm.gf.gfs.get(choosenSer-1).posX >= posX) {
          posX += speed;
        }
        if (mm.gf.gfs.get(choosenSer-1).posX <= posX) {
          posX -= speed;
        }
        if (mm.gf.gfs.get(choosenSer-1).posY >= posY) {
          posY += speed;
        }
        if (mm.gf.gfs.get(choosenSer-1).posY <= posY) {
          posY -= speed;
        }
        if (mm.gf.gfs.size()-1 != -1) {
          if ((mm.gf.gfs.get(choosenSer-1).posX <= posX+tam/2) && (mm.gf.gfs.get(choosenSer-1).posY <= posY+tam/2) && (mm.gf.gfs.get(choosenSer-1).posY >= posY-tam/2) && (mm.gf.gfs.get(choosenSer-1).posX >= posX-tam/2)) {

            mm.gf.gfs.remove(choosenSer-1);
            choosenSer = int(random(1, mm.gf.gfs.size()));
            choosenTipo = int(random(0, 1));
          }
        }
      }
    }
    if (mm.gf.gfs.size() == 0 && mm.cr.crs.size() == 0) {
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
    fill(255, 255, 0);
    ellipse(posX, posY, tam, tam);
    move();
  }
}
