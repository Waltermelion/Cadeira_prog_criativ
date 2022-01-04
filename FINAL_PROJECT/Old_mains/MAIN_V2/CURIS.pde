class Curis {

  ArrayList<PVector> crs;

  Curis(int n) {
    crs = new ArrayList<PVector>();
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      PVector sr = crs.get(i);

      sr.move();
      sr.display();
      sr.eat();
      sr.sex();
      sr.life();
      /*if (sr.finished() && sr.tamanho()) {
        crs.remove(i);        
      }*/
    }
  }
}
