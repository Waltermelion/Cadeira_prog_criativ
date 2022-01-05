class Rakis {

  ArrayList<RakisQuant> rks;

  float time3 = 0;  
  float t;
  Rakis(int n) {
    rks = new ArrayList<RakisQuant>();
  }
  void desenha_rakis() {
    for (int i = rks.size()-1; i >= 0; i--) {

      RakisQuant sr = rks.get(i);
      sr.display();
      sr.life();
      if (second() >= time3 &&  t == 130) {
        time3 = second() + 30;
        mm.rk.rks.remove(i);
      }
    }
  }
}
