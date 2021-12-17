class Main_Menu {

  GameStart gm;
  Options op;

  float x, y, t, t1;
  float x1, y1, t2, t3;
  int value;
  boolean b1, b2;

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
    b1 = false;
    b2 = false;
  }

  void desenha() {    
    fill(value);
    rect(x, y, t, t1);
    fill(255);
    text("FOO FIGHTERS", width/2, (height/2)-150);
    if (mouseX > x && mouseX < x+t && mouseY > y && mouseY < y+t1) fill(200, 0, 0);
    else fill(255);
    text("Game Start", width/2, height/2);
    fill(0);
    rect(x1, y1, t2, t3);
    if (mouseX > x1 && mouseX < x1+t2 && mouseY > y1 && mouseY < y1+t3) fill(200, 0, 0);
    else fill(255);
    text("Options", width/2, height/2+100);

    if (b1) gm.desenha();
    if (b2) op.desenha();
  }
}
