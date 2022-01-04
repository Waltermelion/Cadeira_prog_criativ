class GafisQuant {
  float x;
  float y;
  float speed = 5;
  float t = 5;
  float time = 0;
  float tempotanho = 1;
  int choosen;
  float xtime = random(100.0);
  float ytime = random(100.0);
  float increment = 0.005;

  GafisQuant(float x, float y) {
    this.x = x;
    this.y = y;
    choosen = int(random(1, mm.cr.crs.size()));
  }

  void move() {
    if (t != 70) {
      x = noise(xtime) * width;
      y = noise(ytime) * height;
      xtime += increment;
      ytime += increment;
    }
    if (t == 70) {
      if (choosen > mm.cr.crs.size()) {
        choosen = int(random(1, mm.cr.crs.size()));
      } else {

        if (mm.cr.crs.get(choosen-1).x >= x) {
          x += speed;
        }
        if (mm.cr.crs.get(choosen-1).x <= x) {
          x -= speed;
        }
        if (mm.cr.crs.get(choosen-1).y >= y) {
          y += speed;
        }
        if (mm.cr.crs.get(choosen-1).y <= y) {
          y -= speed;
        }

        if (mm.cr.crs.size()-1 != -1) {
          if ((mm.cr.crs.get(choosen-1).x <= x+t/2) && (mm.cr.crs.get(choosen-1).y <= y+t/2) && (mm.cr.crs.get(choosen-1).y >= y-t/2) && (mm.cr.crs.get(choosen-1).x >= x-t/2)) {

            mm.cr.crs.remove(choosen-1);
            choosen = int(random(1, mm.cr.crs.size()));
          }
        }
      }

      if (mm.cr.crs.size() == 0) {
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
      time = millis() + 100;
      t += tempotanho;
    } else if (t == 70) {
      tempotanho = 0;
    }    
  }



  void display() {
    stroke(255, 255);
    fill(255, 0, 255);
    ellipse(x, y, t, t);
    move();
  }
}
