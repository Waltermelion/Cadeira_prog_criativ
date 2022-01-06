class Rakis {
  float x;
  float y;
  float speed;
  float t = 5;
  float time = 0;
  float time2 = 0;
  float tempotanho = 1;
  int choosenSer, choosenTipo;//qual ser do array escolhes; Qual tipo de ser escolhes(Curis ou Gafis)
  float xtime = random(100.0);
  float ytime = random(100.0);
  float increment = 0.002;
  boolean haveProc = false;

  Rakis(float x, float y) {
    this.x = x;
    this.y = y;
    speed = 3;
    choosenTipo = int(random(1, 20));
    choosenSer = int(random(1, mm.cr.crs.size()));
  }

  void move() {
    if (t != 130) {
      x = noise(xtime) * width;
      y = noise(ytime) * height;
      xtime += increment;
      ytime += increment;
    }
    if (t == 130) {
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
    }


    if (t != 130) {
      x = noise(xtime) * width;
      y = noise(ytime) * height;
      xtime += increment;
      ytime += increment;
    }
    if (mm.cr.crs.size() == 0) {
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
              choosenSer = int(random(1, mm.gf.gfs.size()));
              choosenTipo = int(random(0, 1));
            }
          }
        }
      }


      if (mm.gf.gfs.size() == 0 && mm.cr.crs.size() == 0) {
        x += random(-speed, speed);
        y += random(-speed, speed);
      }
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
  void sex() {
    for (int i = mm.rk.rks.size()-1; i >= 0; i--) {
      float d = dist(mm.rk.rks.get(i).x, mm.rk.rks.get(i).y, x, y);

      if ((d <= 130 && t == 25) && haveProc) {
        mm.rk.rks.add(new Rakis(this.x, this.y));
        haveProc = false;
      } else {
        if (millis() >= time2) {
          time2 = millis() + 5000;
          haveProc = true;
        }
      }
    }
  }

  void display() {
    stroke(255, 255);
    fill(255, 255, 0);
    ellipse(x, y, t, t);
    strokeWeight(1);
    stroke(255);
    fill(0, 255, 0);
      rect(x - 30, y - t/2 - 10, 60, 2);
    if (t == 130 && millis() >= time2) {
      time2 = millis() + 5000;
      fill(255, 0, 0);
      rect((x - 30) *2, y - t/2 - 10, 30, 2);
    } else {
      fill(0, 255, 0);
      rect(x - 30, y - t/2 - 10, 60, 2);
    }
    move();
  }
}
