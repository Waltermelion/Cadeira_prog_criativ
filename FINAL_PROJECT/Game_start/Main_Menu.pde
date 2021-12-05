class Main_Menu {
  Levels l1;

  Main_Menu() {
    l1 = new Levels();
  }

  void desenha() {
    if (keyPressed) {
      if ((key == 's' || key == 'S') && gs == false) {
        mm.desenha();
        gs = true;
      }
    }
  }
}
