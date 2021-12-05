Palavra[] p;

void setup() {
  size(500,500);
  background(255);
  
  p = new Palavra[5];
  p[0] = new Palavra(0,0,"hello");
  p[1] = new Palavra(0,0,"fui");
  p[2] = new Palavra(0,0,"correr");
  p[3] = new Palavra(0,0,"com");
  p[4] = new Palavra(0,0,"tesouras");
}

void draw() {}

void mouseClicked() {
  //background(255);
  int temp = int(random(5));
  p[temp].posX = mouseX;
  p[temp].posY = mouseY;
  p[temp].desenhaPalavra();
}
