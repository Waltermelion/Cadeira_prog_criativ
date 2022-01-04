class PVector {

  float x;
  float y;
  float t = 5;
  float time = 0;
  float tempotanho = 1;
  float xtime = random(100.0);
  float ytime = random(100.0);
  float increment = 0.01;

  PVector(float x1, float y1) {
    x = x1;
    y = y1;
  }

  void move() {
    x = noise(xtime) * width;
    y = noise(ytime) * height;
    xtime += increment;
    ytime += increment;

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
  void sex() {
  }

  void life() {
    if (millis() >= time) {
      time = millis() + 500;
      t += tempotanho;
    } else if (t == 25) {
      tempotanho = 0;
    }
  }

  void display() {
    stroke(255, 255);
    fill(0, 255, 255);
    ellipse(x, y, t, t);
  }
}
