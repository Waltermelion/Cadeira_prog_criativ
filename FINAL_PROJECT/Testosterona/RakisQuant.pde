class RakisQuant {
    float x;
  float y;
  float speed;
  float t = 5;
  float time = 0;
  float tempotanho = 1;
  int choosenSer, choosenTipo;//qual ser do array escolhes; Qual tipo de ser escolhes(Curis ou Gafis)

  RakisQuant(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 3;
    choosenTipo = int(random(1, 20));
    choosenSer = int(random(1, mm.cr.crs.size()));
  }

  void move() {
    if (choosenTipo <= 10) {
      if (choosenSer > mm.cr.crs.size()) {
        choosenSer = int(random(1, mm.cr.crs.size()));
      } else {

        if (mm.cr.crs.get(choosenSer-1).x >= x) {
          x += speed;
        }
        if (mm.cr.crs.get(choosenSer-1).x <= x) {
          x -= speed;
        }
        if (mm.cr.crs.get(choosenSer-1).y >= y) {
          y += speed;
        }
        if (mm.cr.crs.get(choosenSer-1).y <= y) {
          y -= speed;
        }
        if (mm.cr.crs.size()-1 != -1) {
          if ((mm.cr.crs.get(choosenSer-1).x <= x+t/2) && (mm.cr.crs.get(choosenSer-1).y <= y+t/2) && (mm.cr.crs.get(choosenSer-1).y >= y-t/2) && (mm.cr.crs.get(choosenSer-1).x >= x-t/2)) {

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
            choosenSer = int(random(1, mm.gf.gfs.size()));
            choosenTipo = int(random(0, 1));
          }
        }
      }
    }
    if (mm.gf.gfs.size() == 0 && mm.cr.crs.size() == 0) {
      y += random(-speed, speed);
      x += random(-speed, speed);
    }

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
    }
  }
  
  void life() {
    if (millis() >= time) {
      time = millis() + 80;
      t += tempotanho;
    } else if (t == 130) {
      tempotanho = 0;
    }
  }


  void display() {
    stroke(255, 255);
    fill(255, 255, 0);
    ellipse(x, y, t, t);
    move();
  }
}
