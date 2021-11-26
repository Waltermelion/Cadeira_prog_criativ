class Windo {
  int linhas, colunas;
  float posX, posY, larg, alt;  
  Rectangle[] janelas;

  Windo(int l, int c, float x, float y, float la, float al) {
    linhas = l;
    colunas = c;    
    posX = x;
    posY = y;
    larg = la;
    alt = al;

    janelas = new Rectangle[linhas*colunas];
    float janelaX = posX;
    float janelaY = posY;
    float janelaLarg = larg/colunas;
    float janelaAlt = alt/linhas;

    for (int i = 0; i<janelas.length; i++) {
      janelas[i] = new Rectangle(janelaX, janelaY, janelaLarg, janelaAlt);
      if (janelaX < posX+larg - janelaLarg) {
        janelaX += janelaLarg;
      } else {
        janelaX = posX;
        janelaY += janelaAlt;
      }
    }
  }

  void desenha() {
    for (int i = 0; i<janelas.length; i++) {
      janelas[i].desenha();
    }
  }
}
