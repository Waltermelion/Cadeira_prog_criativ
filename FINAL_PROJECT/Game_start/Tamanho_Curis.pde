class Tamanho {

  float x3, y3, c3, l3;
  float x9, y9, c9, l9;
  Tamanho() {

    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;
    
    x9 = width/2 -425;
    y9 = height/2 - 240;
    c9 = 50;
    l9 = 50;
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
    text("50", width/2-400, height/2-200);
  }
}
