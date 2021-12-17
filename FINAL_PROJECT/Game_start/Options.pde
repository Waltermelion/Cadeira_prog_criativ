class Options {

float x3, y3, c3, l3;

  Options() {
    
    x3 = width-200;
    y3 = 50;
    c3 = 200;
    l3 = 50;
    
  }

  void desenha() {
    background(0);
    fill(0);
    rect(x3,y3,c3,l3);
    textSize(50);
    if (mouseX > x3 && mouseX < x3+c3 && mouseY > y3 && mouseY < y3+l3) fill(200, 0, 0);
    else fill(255);
    text("Voltar",width-100,100);
    
  }
  
  
}
