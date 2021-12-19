class CurisQuant {

  float x, y, tam;
  final color COLOR_CURIS;
  
  CurisQuant(float x1, float y1, float tam1) {

    x = x1;
    y = y1;
    tam = tam1;
    COLOR_CURIS = color(255,0,0);
  }

  void desenha_curis_1() {
    fill(COLOR_CURIS);
    ellipse(x, y, tam, tam);
  }
}
