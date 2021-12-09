Pessoa[] pessoas;

void setup() {
  size(800,800);
  pessoas = new Pessoa[9];
  for(int i=0; i < pessoas.length; i++){
    pessoas[i] = new Pessoa();
  }
}

void draw() {
  background(0);
  for(int i=0; i < pessoas.length; i++){
    pessoas[i].desenha();
  }
}
