class Rakis {

  ArrayList<RakisQuant> rks;

  Rakis(int n) {
    rks = new ArrayList<RakisQuant>();

    
  }
  void desenha_rakis() {
    for (int i = rks.size()-1; i >= 0; i--) {

      RakisQuant sr = rks.get(i);
      sr.move();
      sr.display();
      if (sr.finished() && sr.tamanho()) {
        rks.remove(i);
        rks.add(new RakisQuant(random(width), random(height)));
      }
    }
  }
}
