Bola[] b;
int n = 13;
float ang = 0.0;

void setup() {
  size(800, 800);
  b = new Bola[n];
  for (int i=0; i < n; i++) {
    b[i] = new Bola(ang);
    ang += 0.5;
  }
}

void draw() {
  background(255);
  for (int i=0; i < n; i++) {
    b[i].desenha();    
  }
}
