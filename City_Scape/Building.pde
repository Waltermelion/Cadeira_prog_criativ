class Building {
  float posX, posY, larg, alt, n;
  Windo w;

  Building(float x, float y, float l, float a) {
    posX = x;
    posY = y;
    larg = l;
    alt = a;
    n = 1; //random(4, 10);
    w = new Windo(int(random(1, 5)), int(random(1, 5)), posX+5, posY+5, larg-10, alt*0.75);
  }

  void desenha() {
    fill(20, 100, 0);
    noStroke();
    rect(posX, posY, larg, alt);
    w.desenha();
  }
}
