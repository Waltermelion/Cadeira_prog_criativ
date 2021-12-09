Pessoa[] pessoas;
float posX;

void setup() {
  size(800,800);
  rectMode(CENTER);
  pessoas = new Pessoa[9];
  for(int i=0; i < pessoas.length; i++){
    pessoas[i] = new Pessoa(posX);
    posX = posX + 50;
  }
}

void draw() {
  background(0);
  for(int i=0; i < pessoas.length; i++){
    pessoas[i].desenha();
  }
}
