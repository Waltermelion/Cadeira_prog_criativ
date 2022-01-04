class GafisQuant {

  float x;
  float y;
  float speed;
  float t = 5;
  float time = 0;
  float tempoTamanho = 1;

  GafisQuant(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 10;
  }

  void move() {

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
      t += tempoTamanho;
    } else if (t == 50) {
      time = 0;
      tempoTamanho = 0;
    }
    if (second() >= time) {
      time = second() + 1;
      tempoTamanho = 1;
      t += tempoTamanho;
    }
    if (t == 80) {
      tempoTamanho = 0;
    }
  }

  void display() {
    strokeWeight(1);
    stroke(255);
    fill(50, 0, 255);
    ellipse(x, y, t, t);
  }
}
