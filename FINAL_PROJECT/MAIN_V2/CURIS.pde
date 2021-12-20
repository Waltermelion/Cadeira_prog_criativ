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
      if (sr.finished() && sr.tamanho()) {
        crs.remove(i);
        crs.add(new CurisQuant(random(width), random(height)));
      }
    }
  }
}
