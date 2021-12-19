class SeresColection {

  float x;
  float y;
  float speed;
  float t;
  float life = 255;

  SeresColection(float x1, float y1, float t1) {
    x = x1;
    y = y1;
    t = t1;
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
    
    y += random(-speed, speed);

    x += random(-speed, speed);
  }

  boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }


  void display() {
    stroke(255, life);
    fill(255, 0, life);
    ellipse(x, y, t, t);
  }
}
