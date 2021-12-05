Quad q;
float t = 2;
float vel = 10;


void setup() {
  fullScreen();
  rectMode(CENTER);
  q = new Quad();
}

void draw() {
  //background(255);
  float num = noise(t);
  num = map(num, 0, 1, 0, width);
  q.desenha(num, q.posX);
  
  t += 0.02;
  
  q.posX += vel; 
  if (q.posX == width+50) {
    q.posX = 0-50;
  }
  
}
