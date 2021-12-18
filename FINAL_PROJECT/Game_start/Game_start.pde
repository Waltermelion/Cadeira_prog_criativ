Main_Menu mm;//naunt
boolean gs = false;

void settings() {
  size(1800, 800);
}

void setup() {
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

  if (mouseX > mm.op.x4 && mouseX < mm.op.x4+mm.op.c4 && mouseY > mm.op.y4 && mouseY < mm.op.y4+mm.op.l4)
    mm.b2 = true;

  if (mouseX > mm.op.cap.x5 && mouseX < mm.op.cap.x5+mm.op.cap.c5 && mouseY > mm.op.cap.y5 && mouseY < mm.op.cap.y5+mm.op.cap.l5)
    mm.b2 = true;

  if (mouseX > mm.op.cap.x6 && mouseX < mm.op.cap.x6+mm.op.cap.c6 && mouseY > mm.op.cap.y6 && mouseY < mm.op.cap.y6+mm.op.cap.l6)
    mm.b2 = true;

  if (mouseX > mm.op.x7 && mouseX < mm.op.x7+mm.op.c7 && mouseY > mm.op.y7 && mouseY < mm.op.y7+mm.op.l7)
    mm.b2 = true;

  if (mouseX > mm.op.x8 && mouseX < mm.op.x8+mm.op.c8 && mouseY > mm.op.y8 && mouseY < mm.op.y8+mm.op.l8)
    mm.b2 = true;

  if (mouseX > mm.op.cap.tm.x9 && mouseX < mm.op.cap.tm.x9+mm.op.cap.tm.c9 && mouseY > mm.op.cap.tm.y9 && mouseY < mm.op.cap.tm.y9+mm.op.cap.tm.l9)
    mm.gm.cr.tam = 5;

  if (mouseX > mm.op.cap.tm.x10 && mouseX < mm.op.cap.tm.x10+mm.op.cap.tm.c10 && mouseY > mm.op.cap.tm.y10 && mouseY < mm.op.cap.tm.y10+mm.op.cap.tm.l10)
    mm.gm.cr.tam = 10;

  if (mouseX > mm.op.cap.tm.x11 && mouseX < mm.op.cap.tm.x11+mm.op.cap.tm.c11 && mouseY > mm.op.cap.tm.y11 && mouseY < mm.op.cap.tm.y11+mm.op.cap.tm.l11)
    mm.gm.cr.tam = 15;

  if (mouseX > mm.op.cap.cor.x12 && mouseX < mm.op.cap.cor.x12+mm.op.cap.cor.c12 && mouseY > mm.op.cap.cor.y12 && mouseY < mm.op.cap.cor.y12+mm.op.cap.cor.l12)
    mm.gm.cr.c = color(0,0,255);
}


void mouseReleased() {
  if (mouseX > mm.x && mouseX < mm.x+mm.c && mouseY > mm.y && mouseY < mm.y+mm.l)
    mm.b1 = true;

  if (mouseX > mm.x1 && mouseX < mm.x1+mm.c1 && mouseY > mm.y1 && mouseY < mm.y1+mm.l1)
    mm.b2 = true;

  if (mouseX > mm.op.x4 && mouseX < mm.op.x4+mm.op.c4 && mouseY > mm.op.y4 && mouseY < mm.op.y4+mm.op.l4)
    mm.b3 = true;

  if (mouseX > mm.op.cap.x5 && mouseX < mm.op.cap.x5+mm.op.cap.c5 && mouseY > mm.op.cap.y5 && mouseY < mm.op.cap.y5+mm.op.cap.l5)
    mm.b4 = true;

  if (mouseX > mm.op.cap.x6 && mouseX < mm.op.cap.x6+mm.op.cap.c6 && mouseY > mm.op.cap.y6 && mouseY < mm.op.cap.y6+mm.op.cap.l6)
    mm.b5 = true;

  if (mouseX > mm.op.x7 && mouseX < mm.op.x7+mm.op.c7 && mouseY > mm.op.y7 && mouseY < mm.op.y7+mm.op.l7)
    mm.b6 = true;

  if (mouseX > mm.op.x8 && mouseX < mm.op.x8+mm.op.c8 && mouseY > mm.op.y8 && mouseY < mm.op.y8+mm.op.l8)
    mm.b7 = true;
}
