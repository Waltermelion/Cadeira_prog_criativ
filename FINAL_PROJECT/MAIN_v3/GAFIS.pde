class Gafis {// classe do Gafis
  float x;// x do gafis
  float y;// y do gafis
  float speed;// velocidade do gafis
  float t;// tamanho inicial do gafis
  float time;// variavel do tempo, relacionada com o crescimento deles
  float time2;// variavel do tempo, relacionada com o nascer deles
  float tempotanho;// tempo do ser aumentar(aumenta 1 por 1 coiso do tempo que está lá em baixo)
  int choosen;// variavel que determina que curis foi escolhido para ser comido
  float xtime;// variavél x do perlin noise
  float ytime;// variavél y do perlin noise
  float increment;// incremento do perlin noise
  boolean haveProc;// booleana que controla se reproduz ou não
  int hasEaten;// int que determina quantos curis comeu
  float life;// variavel que controla a quantidade de vida do ser
  boolean isOld;// booleana que controla se o ser está velho ou não


  Gafis(float x, float y) {
    this.x = x;
    this.y = y;
    speed = 5;
    t = 5;
    time = 0;
    time2 = 0;
    tempotanho = 1;
    xtime = random(100.0);
    ytime = random(100.0);
    increment = 0.005;
    haveProc = false;
    hasEaten = 0;
    life = random(1000, 1600);
    isOld = false;
    choosen = int(random(1, mm.cr.crs.size()));// escolhe um curis dentro do size do arraylist
  }

  void move() {// move o gafis
    if (t != 70) {// enquanto que o tamanho não seja 70 move-te aleatoreamente pelo canvas
      x = noise(xtime) * width;
      y = noise(ytime) * height;
      xtime += increment;
      ytime += increment;
    }
    if (t == 70) {// se o tamanho for 70...
      if (choosen > mm.cr.crs.size()) {// se o curis escolhido tiver valor maior que o tamanho do arraylist, escolhe um novo(as vezes podia dar index out of bounds porque. um gafis comia um curis 3 e outro gafis queria o curis 4 que deixa de existir...
        choosen = int(random(1, mm.cr.crs.size()));
      } else {

        if (mm.cr.crs.get(choosen-1).x >= x) {// se o curis escolhido estiver à direita...
          x += speed;// move-te para a direita
        }
        if (mm.cr.crs.get(choosen-1).x <= x) {// se o curis escolhido estiver à esquerda...
          x -= speed;// move-te para a esquerda
        }
        if (mm.cr.crs.get(choosen-1).y >= y) {// se o curis escolhido estiver em baixo...
          y += speed;// move-te para baixo
        }
        if (mm.cr.crs.get(choosen-1).y <= y) {// se o curis escolhido estiver em cima...
          y -= speed;// move-te para cima
        }

        if (mm.cr.crs.size()-1 != -1) {// enquanto que não chegamos a 0 no arraylist...
          if ((mm.cr.crs.get(choosen-1).x <= x+t/2) && (mm.cr.crs.get(choosen-1).y <= y+t/2) && (mm.cr.crs.get(choosen-1).y >= y-t/2) && (mm.cr.crs.get(choosen-1).x >= x-t/2)) {// se este gafis estiver a beira do curis escolhido...

            mm.cr.crs.remove(choosen-1);// remove o curis(come-o)
            hasEaten += 1;// adiciona 1 aos curis comidos por este gafis
            life += 150;
            if (hasEaten == 6) {// se este gafis comer 6 vezes...
              hasEaten = 0;// reset na variavel
              mm.gf.gfs.add(new Gafis(this.x, this.y));// nasce um novo gafis na posição deste gafis
            }
            choosen = int(random(1, mm.cr.crs.size()));// escolhe outro curis...
          }
          //choosen = int(random(1, mm.cr.crs.size()));// talvez seja redundante ter isto aqui??(revisão necessária)
        }
      }
    }
    if (mm.cr.crs.size() == 0) {// se não houverem mais curis move-te random
      x += random(-speed, speed);
      y += random(-speed, speed);
    }


    if (x < t/2) {// Não saias do canvas
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
    }
  }

  void life() {// Quando o gafis aparece, aparece pequeno e vai crescendo ao longo do tempo...
    if (millis() >= time) {
      time = millis() + 100;// a cada 1/10~ de segundo
      t += tempotanho;
    } else if (t == 70) {// ...até a idade adulta
      tempotanho = 0;// param de crescer
      life -= 5;
    }
    if (life <= 0) {
      isOld = true;
    }
  }


  void display() {// desenha o gafis no canvas
    stroke(255, 255);
    fill(255, 0, 255);
    ellipse(x, y, t, t);// gafis
    strokeWeight(1);
    stroke(255);
    if (t==70) {
      fill(0, 255, 0);// cor da barra de vida
      rect(x - 20, y - t/2 - 10, 40, 2);// barra de vida
    } else {
      fill(255, 0, 0);
      rect(x - 20, y - t/2 - 10, 40, 2);
    }
    move();
  }
}
