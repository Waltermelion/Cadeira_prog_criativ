class CurisQuant {

  float x;
  float y;
  float speed;
  float t = random(20,50);
  float life = 255;
  //float hunger = 200;


  CurisQuant(float x1, float y1) {
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

    y += random(-speed, speed);

    x += random(-speed, speed);
  }

  void eat() {
    float d = dist(mm.el.x, mm.el.y, x, y );
    for (int i = mm.el.rl.size()-1; i >= 0; i--) {
      if (d <= 25) {
        mm.el.rl.remove(i);
        /*mm.el.rl.add(new RelvaQuant(random(width), random(height), 20));
        t = 20;
        life = 255;*/
      }
    }
  }
  /*boolean hungry() {
    hunger--;
    if (hunger < 0) {
      return true;
    } else {
      return false;
    }
  }*/

  boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }

  boolean tamanho() {
    t--;
    if (t < 0) {
      return true;
    } else {
      return false;
    }
  }


  void display() {
    stroke(255, life);
    fill(0, 255, life);
    ellipse(x, y, t, t);
    /*println(t);
    println(life);
    println(hunger);*/
  }
}
