Curis c;

void setup() {
  fullScreen();
  textSize(100);
  textAlign(CENTER);
  background(0);
  c = new Curis();
}

void draw() {
  c.spawnC();
}
