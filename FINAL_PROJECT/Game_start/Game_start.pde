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


void mousePressed() {
  if (mouseX > mm.x && mouseX < mm.x+mm.c && mouseY > mm.y && mouseY < mm.y+mm.l)
    mm.b1 = true;

  if (mouseX > mm.x1 && mouseX < mm.x1+mm.c1 && mouseY > mm.y1 && mouseY < mm.y1+mm.l1)
    mm.b2 = true;

  if (mouseX > mm.x2 && mouseX < mm.x2+mm.c2 && mouseY > mm.y2 && mouseY < mm.y2+mm.l2)
    exit();
  if (mouseX > mm.op.x3 && mouseX < mm.op.x3+mm.op.c3 && mouseY > mm.op.y3 && mouseY < mm.op.y3+mm.op.l3)
    mm.b1 = false; 
    mm.b2 = false;
    background(0);
}

void mouseReleased() {
  if (mouseX > mm.x && mouseX < mm.x+mm.c && mouseY > mm.y && mouseY < mm.y+mm.l)
    mm.b1 = true;

  if (mouseX > mm.x1 && mouseX < mm.x1+mm.c1 && mouseY > mm.y1 && mouseY < mm.y1+mm.l1)
    mm.b2 = true;
}
