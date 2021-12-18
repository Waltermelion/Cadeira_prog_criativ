class Main_Menu {

  GameStart gm;//Classe inicializada ao clicar no botão "Start Game" dentro do jogo
  Options op;//Classe inicializada ao clicar no botão "Options" dentro do jogo

  float x, y, c, l;
  float x1, y1, c1, l1;
  float x2, y2, c2, l2;
  boolean b1, b2, b3, b4, b5, b6, b7;//Botão 1-7

  Main_Menu() {

    gm = new GameStart();//Declarar Game Start
    op = new Options();//Declarar Options

    x = width/2-125;
    y = height/2 -50;
    c = 250;
    l = 60;
    
    x1 = width/2 -100;
    y1 = height/2 + 50;
    c1 = 200;
    l1 = 60;
    
    b1 = false;
    b2 = false;
    b3 = false;
    b4 = false;
    b5 = false;
    b6 = false;
    b7 = false;
    
    x2 = width/2 -100;
    y2 = height/2 + 120;
    c2 = 200;
    l2 = 100;
  }

  void desenha() {
    fill(0);
    rect(x, y, c, l);
    fill(255);
    textSize(50);
    text("FOO FIGHTERS", width/2, (height/2)-150); 
    if (mouseX > x && mouseX < x+c && mouseY > y && mouseY < y+l) fill(200, 0, 0);
    else fill(255);
    text("Game Start", width/2, height/2);
    
    fill(0);
    rect(x1, y1, c1, l1);
    if (mouseX > x1 && mouseX < x1+c1 && mouseY > y1 && mouseY < y1+l1) fill(200, 0, 0);
    else fill(255);
    text("Options", width/2, height/2+100);
    
    fill(0);
    rect(x2, y2, c2, l2);
    if (mouseX > x2 && mouseX < x2+c2 && mouseY > y2 && mouseY < y2+l2) fill(200, 0, 0);
    else fill(255);
    text("Exit", width/2, height/2 + 200);

    if (b1) gm.desenha();//Se o butão 1 for clicado -> Desenha o Game Start(jogo começa)
    if (b2) op.desenha();//Se o butão 2 for clicado -> Desenha o Options(Abre o "separador" de opções personalizaveis)
  }
}
