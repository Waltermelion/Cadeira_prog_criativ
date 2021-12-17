class GameStart {
  
  Curis cr;
  float x, y;

  GameStart() {

    cr = new Curis(10,20,10);
    x = width/2;
    y = height/2;
  }


  void desenha() {
    background(0);
    cr.spawnC();
  }
}
