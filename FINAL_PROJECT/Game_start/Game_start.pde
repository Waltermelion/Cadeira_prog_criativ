Main_Menu mm;//naunt
boolean gs = false;

void setup() {
  fullScreen();
  textSize(100);
  textAlign(CENTER);
  background(0);
  mm = new Main_Menu();
}

void draw() {
  mm.desenha();
}
