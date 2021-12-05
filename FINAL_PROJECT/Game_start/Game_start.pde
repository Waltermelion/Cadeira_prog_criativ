Main_Menu mm;
boolean gs = false;

void setup(){
  fullScreen();
  textSize(100);
  textAlign(CENTER);
  background(0);
  mm = new Main_Menu();
}

void draw(){    
  mm.desenha();
}
