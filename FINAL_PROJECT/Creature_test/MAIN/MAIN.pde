Curis c;
Gafis g;
Rakis r;
Map pherFood;
Relva relvas;
//ArrayList<Relva> relvas = new ArrayList<Relva>();

void setup() {
  colorMode(HSB, 100);
  //fullScreen();
  size(800, 800, P2D);
  pherFood = new Map(width, height);
  textSize(100);
  textAlign(CENTER);
  c = new Curis(floor(random(width)), floor(random(width)), pherFood);
  g = new Gafis(floor(random(width)), floor(random(width)), pherFood);
  r = new Rakis(floor(random(width)), floor(random(width)), pherFood);
  relvas = new Relva(width/2, height/2);
}

void draw() {
  background(10, 50, 100);
  for (int i=0; i<relvas.size(); i++) {
    relvas.get(i).spawnRandomRelva();
  }
  g.spawnG();
  r.spawnR();
  c.spawnC();

  int thisXi = g.intX;
  int thisYi = g.intY;
  float thisXf = g.posX;
  float thisYf = g.posY;

  if (relvas.getValue(thisXi, thisYi)) {   
    relvas.bite(thisXi, thisYi);
  }
}

void mouseReleased() {
  relvas.addFood(mouseX, mouseY);
}
