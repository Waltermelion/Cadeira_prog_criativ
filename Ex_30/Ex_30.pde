Gota[] gotas;

void setup() {
  size(800,800);
  gotas = new Gota[200];
  for(int i=0; i < gotas.length; i++){
    gotas[i] = new Gota();
  }
}

void draw() {
  background(0);
  for(int i=0; i < gotas.length; i++){
    gotas[i].desenha();
  }
}
