class Curis {

  ArrayList<PVector> crs;

  Curis(int n) {
    crs = new ArrayList<PVector>();
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      PVector sr = crs.get(i);      
      sr.display();      
    }
  }
}
