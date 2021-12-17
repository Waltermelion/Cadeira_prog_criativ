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

void mouseReleased() {
  if (mouseX > mm.x && mouseX < mm.x+mm.t && mouseY > mm.y && mouseY < mm.y+mm.t1)
    mm.GameStart();
  if (mouseX > mm.x1 && mouseX < mm.x1+mm.t2 && mouseY > mm.y1 && mouseY < mm.y1+mm.t3)
    mm.Options();
}
