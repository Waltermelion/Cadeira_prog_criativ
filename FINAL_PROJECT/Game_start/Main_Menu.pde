class Main_Menu {

  GameStart gm;
  Options op;

  float x, y, t, t1;
  float x1, y1, t2, t3;
  int value;

  Main_Menu() {

    gm = new GameStart();
    op = new Options();

    x = width/2-300;
    y = height/2 -100;
    t = 600;
    t1 = 100;
    value = 0;
    x1 = width/2 -250;
    y1 = height/2 + 10;
    t2 = 500;
    t3 = 110;
  }

  void desenha() {    
    fill(value);
    rect(x, y, t, t1);
    fill(value);
    rect(x1, y1, t2, t3);
    fill(255);
    text("FOO FIGHTERS", width/2, (height/2)-150);
    if (mouseX > x && mouseX < x+t && mouseY > y && mouseY < y+t1) fill(200, 0, 0);
    else fill(255);
    text("Game Start", width/2, height/2);
    fill(255);
    if (gs) {
      gm.desenha();
    }
    
    if (mouseX > x1 && mouseX < x1+t2 && mouseY > y && mouseY < y1+t3) fill(200, 0, 0);
    else fill(255);
    text("Options", width/2, height/2+100);
    if (gs) {
      op.desenha();
    }
  }

  void GameStart() {
    if (gs == false) {
      gs = true;
    }
  }

  void Options() {
    if (gs == false) {
      gs = true;
    }
  }
}
