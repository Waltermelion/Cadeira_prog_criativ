Curis c;
//Gafis g;

void setup() {
  colorMode(HSB,100);
  //fullScreen();
  size(800,800);
  textSize(100);
  textAlign(CENTER);  
  c = new Curis();
  //g = new Gafis();
}

void draw() {
  background(10,50,100); 
  c.spawnC();
  //g.spawnG();  
}
