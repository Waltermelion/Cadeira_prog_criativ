Star s;
float ang = 0.0;

void setup() {
  size(800,800);
  s = new Star(ang);
  
}

void draw() {
  background(255);
  s.desenha();
}
