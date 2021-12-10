class Star {
  float posX, posY, ang, step, cx, cy;
  int n;
  int gen;

  Star() {
    ang = 0.0;
    n = 9;    
    gen = 5;
    cx = width/2;
    cy = height/2;
    step = TWO_PI/float(n);
    println(TWO_PI);
  }

  void desenha(float x, float y) {
    x = cx;
    y = cy;
    float r = 300;


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
