class CurisQuant {

  ArrayList<Curis> crs;

  CurisQuant(int n) {
    crs = new ArrayList<Curis>();
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      Curis sr = crs.get(i);      
      sr.display();  
      sr.life();
      sr.move();
      sr.sex();
      
    }
  }
}
