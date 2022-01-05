class Curis {

  ArrayList<PVector> crs;

  float time3 = 0;
  float t;
  
  Curis(int n) {
    crs = new ArrayList<PVector>();
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      PVector sr = crs.get(i);      
      sr.display();  
      sr.life();
      sr.move();
      sr.sex();
      
    }
  }
}
