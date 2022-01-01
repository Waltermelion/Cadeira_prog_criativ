Curis c;
Gafis g;
Rakis r;

void setup() {
  colorMode(HSB, 100);
  //fullScreen();
  size(800, 800, P2D);
  textSize(100);
  textAlign(CENTER);
  c = new Curis(floor(random(width)), floor(random(width)));
  g = new Gafis(floor(random(width)), floor(random(width)));
  r = new Rakis(floor(random(width)), floor(random(width)));
}

void draw() {
  background(10, 50, 100);  
  g.mostraG();
  r.mostraR();
  c.mostraC();  
}
