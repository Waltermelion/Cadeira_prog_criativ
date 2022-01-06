class Relva {

  float x;// x da relva
  float y;// y da relva
  float t;// tamanho da relva

  Relva(float x1, float y1, float t1) {
    x = x1;
    y = y1;
    t = t1;
  }

  void display() {// desenha a relva
    noStroke();
    fill(100, 255, 100);
    rect(x, y, t, t);
  }
}
