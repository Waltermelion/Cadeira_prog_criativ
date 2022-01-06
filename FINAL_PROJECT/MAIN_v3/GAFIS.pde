class GafisQuant {

  ArrayList<Gafis> gfs;

  float time = 0;

  GafisQuant(int n) {
    gfs = new ArrayList<Gafis>();
  }
  void desenha_gafis() {
    for (int i = gfs.size()-1; i >= 0; i--) {

      Gafis sr = gfs.get(i);
      sr.display();
      sr.life();      
    }
  }
}
