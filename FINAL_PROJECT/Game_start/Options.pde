class Options {

  Resolucao r;
  float x3, y3, c3, l3;
  float x4, y4, c4, l4;
  

  Options() {

    r = new Resolucao();
    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;
    
    x4 = width/2-110;
    y4 = height/2 -200;
    c4 = 220;
    l4 = 50;
    
    
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
    text("Resolucao", width/2, (height/2)-150);
    
    if(mm.b2) r.desenha();
  }
}
