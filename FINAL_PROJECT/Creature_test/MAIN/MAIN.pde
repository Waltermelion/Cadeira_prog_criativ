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
  relvas.add(new Relva(width/2,height/2));
}

void draw() {
  background(10, 50, 100);
  for(int i=0;i<relvas.size();i++){
  relvas.get(i).spawnRelvaOnClick();  
  }
  g.spawnG();
  r.spawnR();
  c.spawnC();  
}

void mouseReleased(){  
  relvas.add(new Relva(mouseX,mouseY));
}
