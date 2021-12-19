class Curis {

  ArrayList<SeresColection> crs;

  Curis(int n) {
    crs = new ArrayList<SeresColection>();

    
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      SeresColection sr = crs.get(i);
      sr.move();
      sr.display();
      if (sr.finished()) {
        crs.remove(i);
        crs.add(new SeresColection(random(width), random(height), 20));
      }
    }
  }
}
