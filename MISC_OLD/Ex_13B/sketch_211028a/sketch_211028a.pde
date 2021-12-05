Palavra[] p = new Palavra[5];

void setup() {
  size(500,500);
  rectMode(CENTER);
  p[0] = new Palavra();
  p[1] = new Palavra();
  p[2] = new Palavra();
  p[3] = new Palavra();
  p[4] = new Palavra();
  
  p[0].desenha();
  p[1].desenha();
  p[2].desenha();
  p[3].desenha();
  p[4].desenha();
  
}

void draw() {}

void mouseReleased() {
  if(p[0].posX == mouseX +- 50) {
    p[0].posX = mouseX;
  }
  //p[].posX = mouseX;
  //p[].posY = mouseY;
  //p[].desenha();
}
