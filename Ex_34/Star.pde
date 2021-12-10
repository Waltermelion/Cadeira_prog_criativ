class Star {
  float posX, posY, ang;
  int n;

  Star(float a) {
    ang = a;
    n = 5;    
    
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
      ang += 1.3;
    }    
    endShape(CLOSE);
  }
}
