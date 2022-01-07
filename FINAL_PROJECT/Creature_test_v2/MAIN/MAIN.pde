Curis c1, c2, c3, c4;
Gafis g1, g2;
Rakis r;

void setup() {
  fullScreen();
  //size(800, 800, P2D);
  textSize(100);
  textAlign(CENTER);  
  c1 = new Curis(floor(random(width)), floor(random(width)));
  c2 = new Curis(floor(random(width)), floor(random(width)));
  c3 = new Curis(floor(random(width)), floor(random(width)));
  c4 = new Curis(floor(random(width)), floor(random(width)));
  g1 = new Gafis(floor(random(width)), floor(random(width)));
  g2 = new Gafis(floor(random(width)), floor(random(width)));
  r = new Rakis(floor(random(width)), floor(random(width)));
}

void draw() {
  background(10, 50, 100);  
  g1.mostraG();
  g2.mostraG();
  r.mostraR();
  c1.mostraC();
  c2.mostraC();
  c3.mostraC();
  c4.mostraC(); 
}
