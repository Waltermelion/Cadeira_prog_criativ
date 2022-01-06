class RakisQuant {

  ArrayList<Rakis> rks;

  RakisQuant(int n) {
    rks = new ArrayList<Rakis>();
  }
  void desenha_rakis() {
    for (int i = rks.size()-1; i >= 0; i--) {

      Rakis sr = rks.get(i);
      sr.display();
      sr.life();
      if (second() >= time3 &&  t == 130) {
        time3 = second() + 30;
        mm.rk.rks.remove(i);
      }
    }
  }
}
