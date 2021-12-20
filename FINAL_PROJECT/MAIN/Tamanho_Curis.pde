class Tamanho {//Classe para determinar o tamanho dos Curis

  float x3, y3, c3, l3;
  float x9, y9, c9, l9;
  float x10, y10, c10, l10;
  float x11, y11, c11, l11;
  Tamanho() {

    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;
    
    x9 = width/2 -425;
    y9 = height/2 - 240;
    c9 = 50;
    l9 = 50;
    
    x10 = width/2 -425;
    y10 = height/2 + 160;
    c10 = 50;
    l10 = 50;
    
    x11 = width/2 + 375;
    y11 = height/2 + 160;
    c11 = 50;
    l11 = 50;
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
    rect(x9, y9, c9, l9);
    if (mouseX > x9 && mouseX < x9+c9 && mouseY > y9 && mouseY < y9+l9) fill(200, 0, 0);
    else fill(255);
    text("5", width/2-400, height/2-200);
    
    fill(0);
    rect(x10, y10, c10, l10);
    if (mouseX > x10 && mouseX < x10+c10 && mouseY > y10 && mouseY < y10+l10) fill(200, 0, 0);
    else fill(255);
    text("10", width/2-400, height/2 + 200);
    
    fill(0);
    rect(x11, y11, c11, l11);
    if (mouseX > x11 && mouseX < x11+c11 && mouseY > y11 && mouseY < y11+l11) fill(200, 0, 0);
    else fill(255);
    text("15", width/2+400, height/2+200);
  }
}
