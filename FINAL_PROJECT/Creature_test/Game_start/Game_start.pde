Curis c;

void setup() {
  fullScreen();
  textSize(100);
  textAlign(CENTER);
  background(120,50,35);
  c = new Curis();
}

void draw() {
  c.spawnC();
}
