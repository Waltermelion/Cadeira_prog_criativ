class GameStart {
  
  Curis cr;
  float x, y;

  GameStart() {

    cr = new Curis();
    x = width/2;
    y = height/2;
  }


  void desenha() {
    background(0);
    cr.spawnC();
  }
}
