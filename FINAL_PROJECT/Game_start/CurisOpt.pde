class CurisOpt {

  Tamanho tm;
  Cores cor;
  float x3, y3, c3, l3;
  float x5, y5, c5, l5;
  float x6, y6, c6, l6;

  CurisOpt() {
    
    tm = new Tamanho();
    cor = new Cores();
    
    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;
    
    x5 = width/2-500;
    y5 = height/2 -50;
    c5 = 200;
    l5 = 50;

    x6 = width/2-460;
    y6 = height/2 + 50;
    c6 = 150;
    l6 = 50;
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
    rect(x5, y5, c5, l5);
    if (mouseX > x5 && mouseX < x5+c5 && mouseY > y5 && mouseY < y5+l5) fill(200, 0, 0);
    else fill(255);
    text("Tamanho", width/2-400, height/2);

    fill(0);
    rect(x6, y6, c6, l6);
    if (mouseX > x6 && mouseX < x6+c6 && mouseY > y6 && mouseY < y6+l6) fill(200, 0, 0);
    else fill(255);
    text("Cores", width/2-400, height/2+100);
    
    if(mm.b4) tm.desenha();
    if(mm.b5) cor.desenha();
  }
}
