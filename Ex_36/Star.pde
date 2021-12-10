class Star {
  float posX, posY, ang, step;
  int n;
  int gen;

  Star() {
    ang = 0.0;
    n = 9;    
    gen = 5;

    step = TWO_PI/float(n);
    println(TWO_PI);
  }

  void desenha(float x, float y) {
    float cx = x;
    float cy = y;
    float r = 300;
    x = posX;
    y = posY;

    fill(0);
    beginShape();    
    for (int i=0; i < n; i++) {
      gen -= 1;
      posX = cx + r * cos(ang);
      posY = cy + r * sin(ang);
      vertex(posX, posY);
      ang += step;
      r = 150;
      if (gen > 0) {
        s.desenha(posX, posY);
      }
      posX = cx + r * cos(ang);
      posY = cy + r * sin(ang);
      vertex(posX, posY);
      ang += step;
      r = 300;
    }    
    endShape(CLOSE);
  }
}
