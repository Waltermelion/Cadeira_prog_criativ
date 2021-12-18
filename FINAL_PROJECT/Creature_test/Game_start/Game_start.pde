Curis c;
Gafis g;
Rakis r;

void setup() {
  colorMode(HSB, 100);
  //fullScreen();
  size(800, 800);
  textSize(100);
  textAlign(CENTER);
  c = new Curis();
  g = new Gafis();
  r = new Rakis();
}

void draw() {
  background(10, 50, 100);
  g.spawnG();
  r.spawnR();
  c.spawnC();
}
