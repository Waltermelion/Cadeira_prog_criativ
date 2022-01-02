class Gafis {
  float posX, posY, tam;
  float vida;
  float speed;
  int choosen;
  Gafis(int spawnX, int spawnY) {
    posX = float(spawnX);
    posY = float(spawnY);
    tam = 50;
    vida = 20;
    speed = 10;
    choosen = int(random(1, 3));
  }
  void choose() {
    search(choosen);
  }

  void mostraG() {
    fill(0, 0, 255);
    ellipse(posX, posY, tam, tam);
    choose();
    println(choosen);
  }
  void search(int n) {
    if (n == 1) {
      if (c1.posX > posX) {
        posX += speed;
      }
      if (c1.posX < posX) {
        posX -= speed;
      }
      if (c1.posY > posY) {
        posY += speed;
      }
      if (c1.posY < posY) {
        posY -= speed;
      }
      if (c1.posX <= posX-tam || c1.posY <= posY-tam || c1.posX >= posX+tam || c1.posY >= posY+tam) {
        choosen = int(random(1, 3));
      }
    }
    //c2
    if (n == 2) {
      if (c2.posX > posX) {
        posX += speed;
      }
      if (c2.posX < posX) {
        posX -= speed;
      }
      if (c2.posY > posY) {
        posY += speed;
      }
      if (c2.posY < posY) {
        posY -= speed;
      }
      if (c2.posX <= posX-tam || c2.posY <= posY-tam || c2.posX >= posX+tam || c2.posY >= posY+tam) {
        choosen = int(random(1, 3));
      }
    }
    /*//c3
     if (n == 3) {
     if (c3.posX > posX) {
     posX += speed;
     }
     if (c3.posX < posX) {
     posX -= speed;
     }
     if (c3.posY > posY) {
     posY += speed;
     }
     if (c3.posY < posY) {
     posY -= speed;
     }
     if (c3.posX >= posX-tam || c3.posY >= posY-tam || c3.posX <= posX+tam || c3.posY <= posY+tam) {
     choosen = int(random(1, 5));
     }
     }
     //c4
     if (n == 4) {
     if (c4.posX > posX) {
     posX += speed;
     }
     if (c4.posX < posX) {
     posX -= speed;
     }
     if (c4.posY > posY) {
     posY += speed;
     }
     if (c4.posY < posY) {
     posY -= speed;
     }
     if (c4.posX >= posX-tam || c4.posY >= posY-tam || c4.posX <= posX+tam || c4.posY <= posY+tam) {
     choosen = int(random(1, 5));
     }
     }*/

    //No Out of bounds
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
}
