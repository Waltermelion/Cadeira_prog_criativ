class Palavra {
  float posX, posY;
  String pl;
  int tamanho;
  
  Palavra(float x, float y, String p) {
    posX = x;
    posY = y;
    pl = p;
    tamanho = 32;
  }
  
  void desenhaPalavra() {
    fill(0);
    textSize(tamanho);
    text(pl, posX, posY);
  }
}
