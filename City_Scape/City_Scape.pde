Sky s;
City c;

void setup() {
  size(600, 600);  
  colorMode(HSB, 100, 100, 100);
  s = new Sky();
  c = new City(8);
}

void draw() {  
  s.desenha();
  c.desenha();
}
