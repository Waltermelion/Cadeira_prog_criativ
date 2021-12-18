class Gafis {
  float posX, posY, tam;
  float vida;
  float fome;
  float t = 2;
  float vel = 10;

  Gafis() {
    posX = random(width);
    posY = random(height);
    tam = 50;
    vida = 20;
    fome = 50;
  }

  void spawnG() {      
    float num = noise(t);
    num = map(num, 0, 1, 0, width);    
    posY = num;
    if (posX < tam/2) {
      posX = tam/2;
    }  
    if (posX > width-tam/2) {
      posX = width-tam/2;
    }  
    if (posY > height-tam/2) {
      posY = height-tam/2;
    }  
    if (posY < tam/2) {
      posY = tam/2;
    }
    fill(0);
    ellipse(posX, posY, tam, tam);

    t += random(-0.02, 0.02);

    posX += random(-vel, vel);
  }
}
