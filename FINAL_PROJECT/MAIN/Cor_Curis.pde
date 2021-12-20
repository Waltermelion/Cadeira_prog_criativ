class Cores {//Classe para o utilizador mudar a cor dos seres Curis

float x3, y3, c3, l3;
float x12, y12, c12, l12;

  Cores() {
    
    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;
    
    x12 = width/2 -450;
    y12 = height/2 - 250;
    c12 = 100;
    l12 = 50;
    
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
    rect(x12,y12,c12,l12);
    if (mouseX > x12 && mouseX < x12+c12 && mouseY > y12 && mouseY < y12+l12) fill(0, 0, 200);
    else fill(255);
    text("Azul",width/2-400, height/2-200);
    
  }
}
