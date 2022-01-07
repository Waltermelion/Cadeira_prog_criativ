class RelvaQuant {

  float x;
  float y;
  float t;

  RelvaQuant(float x1, float y1, float t1) {
    x = x1;
    y = y1;
    t = t1;
  }

  void display() {
    noStroke();
    //stroke(100, 255, 100);
    fill(100, 255, 100);
    rect(x, y, t, t);
  }
}
