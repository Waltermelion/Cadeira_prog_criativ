class GameStart {

  float x, y;

  GameStart() {

    x = width/2;
    y = height/2;
    
  }


  void desenha() {
    background(0);
    fill(255,0,0);
    text("Nice", x, y);
  }
}
