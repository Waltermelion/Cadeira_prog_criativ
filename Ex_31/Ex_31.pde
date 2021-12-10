Pessoa[] pessoas;
float posX = 50;

void setup() {
  size(800,800);
  rectMode(CENTER);
  pessoas = new Pessoa[8];
  for(int i=0; i < pessoas.length; i++){
    pessoas[i] = new Pessoa(posX);
    posX = posX + 100;
  }
}

void draw() {
  background(0);
  for(int i=0; i < pessoas.length; i++){
    pessoas[i].desenha();
  }
}
