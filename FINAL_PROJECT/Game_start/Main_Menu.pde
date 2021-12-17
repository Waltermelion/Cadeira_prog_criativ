class Main_Menu {


  Main_Menu() {
  }

  void desenha() {    
    text("PRESS 'S' TO START THE GAME", width/2, height/2);  
    text("FOO FIGHTERS", width/2, (height/2)-150);
    if (keyPressed) {
      if ((key == 's' || key == 'S') && gs == false) {        
        gs = true;
      }
    }
    if (gs) {
    }
  }
}
