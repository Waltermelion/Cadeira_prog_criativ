Curis c;
Gafis g;
Rakis r;
ArrayList<Relva> relvas = new ArrayList<Relva>();

void setup() {  
  colorMode(HSB, 100);
  //fullScreen();
  size(800, 800);
  textSize(100);
  textAlign(CENTER);
  c = new Curis();
  g = new Gafis();
  r = new Rakis();
  relvas.add(new Relva());
}

void draw() {
  background(10, 50, 100);
  g.spawnG();
  r.spawnR();
  c.spawnC();  
  Relva relv = relvas.get(0);
  relv.spawnRandomRelva();
}

void mouseReleased(){  
  relvas.add(new Relva());
  Relva relv1 = relvas.get(1);
  relv1.spawnRelvaOnClick();
}
