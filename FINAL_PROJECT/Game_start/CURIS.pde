class Curis {

  CurisQuant[] cq;
  
  int n = 10;

  Curis() {
    cq = new CurisQuant[n];
    
    for (int i = 0; i < n; i++) {
      cq[i] = new CurisQuant(random(width), random(height), 20);
    }
  }

  void desenha_curis() {
    for (int i = 0; i < n; i++) {
      cq[i].desenha_curis_1();
    }
  }
}
