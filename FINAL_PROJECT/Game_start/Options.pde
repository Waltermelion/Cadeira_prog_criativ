class Options {

  CurisOpt cap;
  GafisOpt gap;
  RakisOpt rap;
  float x3, y3, c3, l3;
  float x4, y4, c4, l4;
  float x7, y7, c7, l7;
  float x8, y8, c8, l8;

  Options() {

    cap = new CurisOpt();
    gap = new GafisOpt();
    rap = new RakisOpt();
    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;

    x4 = width/2-250;
    y4 = height/2 -50;
    c4 = 100;
    l4 = 50;

    x7 = width/2-50;
    y7 = height/2 -50;
    c7 = 100;
    l7 = 50;

    x8 = width/2 +140;
    y8 = height/2 - 50;
    c8 = 120;
    l8 = 50;
  }

  void desenha() {
    background(0);
    fill(0);
    rect(x3, y3, c3, l3);
    textSize(50);
    if (mouseX > x3 && mouseX < x3+c3 && mouseY > y3 && mouseY < y3+l3) fill(200, 0, 0);
    else fill(255);
    text("Voltar", width-100, 100);

    fill(0);
    rect(x4, y4, c4, l4);
    if (mouseX > x4 && mouseX < x4+c4 && mouseY > y4 && mouseY < y4+l4) fill(200, 0, 0);
    else fill(255);
    text("Curis", width/2-200, height/2);

    fill(0);
    rect(x7, y7, c7, l7);
    if (mouseX > x7 && mouseX < x7+c7 && mouseY > y7 && mouseY < y7+l7) fill(200, 0, 0);
    else fill(255);
    text("Gafis", width/2, height/2);

    fill(0);
    rect(x8, y8, c8, l8);
    if (mouseX > x8 && mouseX < x8+c8 && mouseY > y8 && mouseY < y8+l8) fill(200, 0, 0);
    else fill(255);
    text("Rakis", width/2 + 200, height/2);

    if (mm.b3) cap.desenha();
    if (mm.b6) gap.desenha();
    if (mm.b7) rap.desenha();
  }
}
