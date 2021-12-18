Main_Menu mm;//Classe do Main Menu
boolean gs = false;//boolean que determina se o jogo está inicializado ou não(passa para "true" quando o jogador clica em "Start Game")

void settings() {
  size(1800, 800);//Size default(Queriamos conseguir alterar o size dentro do programa para um User Experience personalizado)
}

void setup() {
  textSize(100);
  textAlign(CENTER);
  background(0);
  mm = new Main_Menu();//Declarar Main Menu
}

void draw() {
  mm.desenha();//Desenha o Main Menu
}

//MousePressed e MouseReleased para quando clicarmos nos botoes do Main Menu
void mousePressed() {
  if (mouseX > mm.x && mouseX < mm.x+mm.c && mouseY > mm.y && mouseY < mm.y+mm.l)//Se a posição x e y do rato estiverem perto da posição x e y do butão 1 e dentro do c(Comprimento) e l(Largura), Boolean mm.b1 = verdadeiro
    mm.b1 = true;

  if (mouseX > mm.x1 && mouseX < mm.x1+mm.c1 && mouseY > mm.y1 && mouseY < mm.y1+mm.l1)//Se a posição x e y do rato estiverem perto da posição x e y do butão 2 e dentro do c(Comprimento) e l(Largura)
    mm.b2 = true;

  if (mouseX > mm.x2 && mouseX < mm.x2+mm.c2 && mouseY > mm.y2 && mouseY < mm.y2+mm.l2)//Se a posição x e y do rato estiverem perto da posição x e y do butão 3 e dentro do c(Comprimento) e l(Largura)
    exit();

  if (mouseX > mm.op.x3 && mouseX < mm.op.x3+mm.op.c3 && mouseY > mm.op.y3 && mouseY < mm.op.y3+mm.op.l3)//Se a posição x e y do rato estiverem perto da posição x e y do butão "4"(butão disponível ao clicar no butão Options, chamado "Voltar") e dentro do c(Comprimento) e l(Largura)
    mm.b1 = false;
  mm.b2 = false;
  background(0);//Sai do Options e volta para o Main Menu

  if (mouseX > mm.op.x4 && mouseX < mm.op.x4+mm.op.c4 && mouseY > mm.op.y4 && mouseY < mm.op.y4+mm.op.l4)//Varios butões "Voltar" dentro dos vários separadores nas "Options"
    mm.b2 = true;//Sai do Options e volta para o Main Menu

  if (mouseX > mm.op.cap.x5 && mouseX < mm.op.cap.x5+mm.op.cap.c5 && mouseY > mm.op.cap.y5 && mouseY < mm.op.cap.y5+mm.op.cap.l5)
    mm.b2 = true;//Sai do Options e volta para o Main Menu

  if (mouseX > mm.op.cap.x6 && mouseX < mm.op.cap.x6+mm.op.cap.c6 && mouseY > mm.op.cap.y6 && mouseY < mm.op.cap.y6+mm.op.cap.l6)
    mm.b2 = true;//Sai do Options e volta para o Main Menu

  if (mouseX > mm.op.x7 && mouseX < mm.op.x7+mm.op.c7 && mouseY > mm.op.y7 && mouseY < mm.op.y7+mm.op.l7)
    mm.b2 = true;//Sai do Options e volta para o Main Menu

  if (mouseX > mm.op.x8 && mouseX < mm.op.x8+mm.op.c8 && mouseY > mm.op.y8 && mouseY < mm.op.y8+mm.op.l8)
    mm.b2 = true;//Sai do Options e volta para o Main Menu

  if (mouseX > mm.op.cap.tm.x9 && mouseX < mm.op.cap.tm.x9+mm.op.cap.tm.c9 && mouseY > mm.op.cap.tm.y9 && mouseY < mm.op.cap.tm.y9+mm.op.cap.tm.l9)
    mm.gm.cr.tam = 5;

  if (mouseX > mm.op.cap.tm.x10 && mouseX < mm.op.cap.tm.x10+mm.op.cap.tm.c10 && mouseY > mm.op.cap.tm.y10 && mouseY < mm.op.cap.tm.y10+mm.op.cap.tm.l10)
    mm.gm.cr.tam = 10;

  if (mouseX > mm.op.cap.tm.x11 && mouseX < mm.op.cap.tm.x11+mm.op.cap.tm.c11 && mouseY > mm.op.cap.tm.y11 && mouseY < mm.op.cap.tm.y11+mm.op.cap.tm.l11)
    mm.gm.cr.tam = 15;

  if (mouseX > mm.op.cap.cor.x12 && mouseX < mm.op.cap.cor.x12+mm.op.cap.cor.c12 && mouseY > mm.op.cap.cor.y12 && mouseY < mm.op.cap.cor.y12+mm.op.cap.cor.l12)
    mm.gm.cr.c = color(0,0,255);
}


void mouseReleased() {
  if (mouseX > mm.x && mouseX < mm.x+mm.c && mouseY > mm.y && mouseY < mm.y+mm.l)
    mm.b1 = true;

  if (mouseX > mm.x1 && mouseX < mm.x1+mm.c1 && mouseY > mm.y1 && mouseY < mm.y1+mm.l1)
    mm.b2 = true;

  if (mouseX > mm.op.x4 && mouseX < mm.op.x4+mm.op.c4 && mouseY > mm.op.y4 && mouseY < mm.op.y4+mm.op.l4)
    mm.b3 = true;

  if (mouseX > mm.op.cap.x5 && mouseX < mm.op.cap.x5+mm.op.cap.c5 && mouseY > mm.op.cap.y5 && mouseY < mm.op.cap.y5+mm.op.cap.l5)
    mm.b4 = true;

  if (mouseX > mm.op.cap.x6 && mouseX < mm.op.cap.x6+mm.op.cap.c6 && mouseY > mm.op.cap.y6 && mouseY < mm.op.cap.y6+mm.op.cap.l6)
    mm.b5 = true;

  if (mouseX > mm.op.x7 && mouseX < mm.op.x7+mm.op.c7 && mouseY > mm.op.y7 && mouseY < mm.op.y7+mm.op.l7)
    mm.b6 = true;

  if (mouseX > mm.op.x8 && mouseX < mm.op.x8+mm.op.c8 && mouseY > mm.op.y8 && mouseY < mm.op.y8+mm.op.l8)
    mm.b7 = true;
}
