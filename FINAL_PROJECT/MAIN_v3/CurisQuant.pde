class PVector {
  float x;
  float y;
  float speed;
  float t = 5;
  float time = 0;
  float v = 2;
  float tempotanho = 1;

  PVector(float x1, float y1) {
    x = x1;
    y = y1;
    t = 20;
    speed = 10;
  }

  void move() {
    y += random(-speed, speed);
    x += random(-speed, speed);
    
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
    move();
  }
}
