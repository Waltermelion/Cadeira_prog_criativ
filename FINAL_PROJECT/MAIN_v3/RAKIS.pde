class Rakis {// classe do Rakis
  float x;// x do rakis
  float y;// y do rakis
  float speed;// velocidade do rakis
  float t;// tamanho inicial do rakis
  float time;// variavel do tempo, relacionada com o crescimento deles
  float time2;// variavel do tempo, relacionada com o nascer deles
  float tempotanho;// tempo do ser aumentar(aumenta 1 por 1 coiso do tempo que está lá em baixo)
  int choosenSer, choosenTipo;//qual ser do array escolhes; Qual tipo de ser escolhes(Curis ou rakis)
  float xtime;// variavél x do perlin noise
  float ytime;// variavél y do perlin noise
  float increment;// incremento do perlin noise
  boolean haveProc;// booleana que controla se reproduz ou não
  int hasEaten;// int que determina quantos curis comeu
  float life;// variavel que controla a quantidade de vida do ser
  boolean isOld;// booleana que controla se o ser está velho ou não

  Rakis(float x, float y) {
    this.x = x;
    this.y = y;
    speed = 3;
    t = 5;
    time = 0;
    time2 = 0;
    tempotanho = 1;
    xtime = random(100.0);
    ytime = random(100.0);
    increment = 0.002;
    haveProc = false;
    hasEaten = 0;
    life = random(500, 900);
    isOld = false;
    choosenTipo = 5;// escolhe o tipo de ser(começa como curis)
    choosenSer = int(random(1, mm.cr.crs.size()));// escolhe um curis dentro do size do arraylist
  }

  void move() {// move o rakis
    if (t != 130) {// enquanto que o tamanho não seja 130 move-te aleatoreamente pelo canvas
      x = noise(xtime) * width;
      y = noise(ytime) * height;
      xtime += increment;
      ytime += increment;
    }
    if (t == 130) {// se o tamanho for 130...
      if (choosenTipo <= 10) {// se o tipo for menor que 10(curis)...
        if (choosenSer > mm.cr.crs.size()) {// se o curis escolhido tiver valor maior que o tamanho do arraylist, escolhe um novo
          choosenSer = int(random(1, mm.cr.crs.size()));
        } else {

          if (mm.cr.crs.get(choosenSer-1).x >= x) {// se o curis escolhido estiver à direita...
            x += speed;// move-te para a direita
          }
          if (mm.cr.crs.get(choosenSer-1).x <= x) {// se o curis escolhido estiver à esquerda...
            x -= speed;// move-te para a esquerda
          }
          if (mm.cr.crs.get(choosenSer-1).y >= y) {// se o curis escolhido estiver em baixo...
            y += speed;// move-te para baixo
          }
          if (mm.cr.crs.get(choosenSer-1).y <= y) {// se o curis escolhido estiver em cima...
            y -= speed;// move-te para cima
          }

          if (mm.cr.crs.size()-1 != -1) {// enquanto que não chegamos a 0 no arraylist...
            if ((mm.cr.crs.get(choosenSer-1).x <= x+t/2) && (mm.cr.crs.get(choosenSer-1).y <= y+t/2) && (mm.cr.crs.get(choosenSer-1).y >= y-t/2) && (mm.cr.crs.get(choosenSer-1).x >= x-t/2)) {// se este rakis estiver a beira do curis escolhido...

              mm.cr.crs.remove(choosenSer-1);// remove o curis(come-o)

              hasEaten += 1;// adiciona 1 aos curis comidos por este rakis
              life += 500;
              if (hasEaten == 6) {// se este rakis comer 6 vezes...
                hasEaten = 0;// reset na variavel
                mm.rk.rks.add(new Rakis(this.x, this.y));// nasce um novo rakis na posição deste rakis
              }
              if (choosenTipo <= 10) {
                choosenSer = int(random(1, mm.cr.crs.size()));
              } else {
                choosenSer = int(random(1, mm.gf.gfs.size()));
              }
            }
          }
        }
      }
    }


    if (t != 130) {// enquanto que o tamanho não seja 130 move-te aleatoreamente pelo canvas
      x = noise(xtime) * width;
      y = noise(ytime) * height;
      xtime += increment;
      ytime += increment;
    }
    if (mm.cr.crs.size() == 0) {// se não houverem mais curis, come só gafis
      choosenTipo = 15;
    }
    if (t == 130) {
      if (choosenTipo >= 11) {  ////////////ESCOLHEU O GAFIS
        if (choosenSer > mm.gf.gfs.size()) {
          choosenSer = int(random(1, mm.gf.gfs.size()));
        } else {

          if (mm.gf.gfs.get(choosenSer-1).x >= x) {
            x += speed;
          }
          if (mm.gf.gfs.get(choosenSer-1).x <= x) {
            x -= speed;
          }
          if (mm.gf.gfs.get(choosenSer-1).y >= y) {
            y += speed;
          }
          if (mm.gf.gfs.get(choosenSer-1).y <= y) {
            y -= speed;
          }

          if (mm.gf.gfs.size()-1 != -1) {
            if ((mm.gf.gfs.get(choosenSer-1).x <= x+t/2) && (mm.gf.gfs.get(choosenSer-1).y <= y+t/2) && (mm.gf.gfs.get(choosenSer-1).y >= y-t/2) && (mm.gf.gfs.get(choosenSer-1).x >= x-t/2)) {

              mm.gf.gfs.remove(choosenSer-1);

              hasEaten += 1;
              life += 100;
              if (hasEaten == 6) {
                hasEaten = 0;
                mm.rk.rks.add(new Rakis(this.x, this.y));
              }
              choosenSer = int(random(1, mm.gf.gfs.size()));
              choosenTipo = int(random(0, 20));
            }
          }
        }
      }


      if (mm.gf.gfs.size() == 0 && mm.cr.crs.size() == 0) {// se não houverem mais gafis move-te random
        x += random(-speed, speed);
        y += random(-speed, speed);
      }
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


  void life() {// Quando o rakis aparece, aparece pequeno e vai crescendo ao longo do tempo...
    if (millis() >= time) {
      time = millis() + 80;// a cada 1/10~ de segundo
      t += tempotanho;
    } else if (t == 130) {// ...até a idade adulta
      tempotanho = 0;// param de crescer
      life -= 5;
    }
    if (life <= 0) {
      isOld = true;
    }
  }

  void display() {// desenha o rakis no canvas
    stroke(255, 255);
    fill(255, 255, 0);
    ellipse(x, y, t, t);// rakis
    strokeWeight(1);
    stroke(255);
    if (t==130) {
      fill(0, 255, 0);// cor da barra de vida
      rect(x - 30, y - t/2 - 10, 60, 2);// barra de vida
    } else {
      fill(255, 0, 0);
      rect(x - 30, y - t/2 - 10, 60, 2);
    }
    move();
  }
}
