class GameStart {

  float x, y, t;

  GameStart() {

    x = width/2;
    y = height/2;
    t = 100;
  }


  void desenha() {
    background(0);
    fill(255,0,0);
    text("Nice", x, y);
  }
}
