class Curis {

  ArrayList<CurisQuant> crs;

  Curis(int n) {
    crs = new ArrayList<CurisQuant>();
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      CurisQuant sr = crs.get(i);
      sr.move();
      sr.display();
      sr.eat();
      if (sr.finished() && sr.tamanho()) {
        crs.remove(i);        
      }
    }
  }
}
