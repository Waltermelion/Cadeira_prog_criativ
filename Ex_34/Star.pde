class Star {
  float posX, posY, ang;
  int n;

  Star() {
    ang = 0.0;
    n = 5;
  }

  void desenha() {
    float cx = width/2;
    float cy = height/2;
    float r = 300;

    posX = cx + r * cos(ang);
    posY = cy + r * sin(ang);
    fill(0);
    beginShape();
    for (int i=0; i < n; i++) {
      vertex(posX, posY);
      ang += 0.05;
      println(i);
    }
    endShape();
  }
}
