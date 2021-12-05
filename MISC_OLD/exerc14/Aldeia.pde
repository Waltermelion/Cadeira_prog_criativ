class Aldeia {
  Casa[] casas;
  
  Aldeia() {
    casas = new Casa[5];
    
    casas[0] = new Casa(random(width), random(height), 50);
    casas[1] = new Casa(random(width), random(height), 50);
    casas[2] = new Casa(random(width), random(height), 50);
    casas[3] = new Casa(random(width), random(height), 50);
    casas[4] = new Casa(random(width), random(height), 50);
  }
  
  void desenha() {
    casas[0].desenha();
    casas[1].desenha();
    casas[2].desenha();
    casas[3].desenha();
    casas[4].desenha();
  }
}