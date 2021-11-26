Nave n;


void setup() {
  size(500, 500);
  rectMode(CENTER);
  n = new Nave(width/2, 20);
}

void draw() {
  background(255);
  n.desenha();
}

void keyPressed() {
  if (key=='a'||key=='A') {
    n.moveLeft();
  }else if(key=='d'||key=='D'){
    n.moveRight();
  }else if (key=='w'||key=='W'){
    n.shoot();
  }
  
}
