class Main_Menu {
  Levels l1;

  Main_Menu() {
    l1 = new Levels();
  }

  void desenha() {    
    text("PRESS 'S' TO START THE GAME", width/2, height/2);  
    text("FOO FIGHTERS", width/2, (height/2)-150);
    if (keyPressed) {
      if ((key == 's' || key == 'S') && gs == false) {        
        gs = true;
      }
    }
    if (gs){
    l1.desenha();
    }
  }
}
