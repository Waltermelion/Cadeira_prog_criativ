class Star {
  float posX, posY, ang, step;
  int n;

  Star() {
    ang = 0.0;
    n = 9;    
    step = TWO_PI/float(n);
    println(TWO_PI);
  }

  void desenha() {
    float cx = width/2;
    float cy = height/2;
    float r = 300;


    fill(0);
    beginShape();    
    for (int i=0; i < n; i++) {
      posX = cx + r * cos(ang);
      posY = cy + r * sin(ang);
      vertex(posX, posY);
      ang += step;
      r = 150;
      posX = cx + r * cos(ang);
      posY = cy + r * sin(ang);
      vertex(posX, posY);
      ang += step;
      r = 300;
    }    
    endShape(CLOSE);
  }
}
