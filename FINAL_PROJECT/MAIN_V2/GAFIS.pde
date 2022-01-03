class Gafis {

  ArrayList<GafisQuant> gfs;

  Gafis(int n) {
    gfs = new ArrayList<GafisQuant>();
  }
  void desenha_gafis() {
    for (int i = gfs.size()-1; i >= 0; i--) {

      GafisQuant sr = gfs.get(i);
      sr.move();
      sr.display();
      sr.life();
    }
  }
}
