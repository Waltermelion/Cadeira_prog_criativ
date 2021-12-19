class Curis {

  ArrayList<SeresColection> crs;

  Curis() {
    crs = new ArrayList<SeresColection>();

    crs.add(new SeresColection(random(width), random(height), 20));
  }
  void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      SeresColection ball = crs.get(i);
      ball.move();
      ball.display();
      if (ball.finished()) {
        crs.remove(i);
        crs.add(new SeresColection(random(width), random(height), 20));
      }
    }
  }
}
