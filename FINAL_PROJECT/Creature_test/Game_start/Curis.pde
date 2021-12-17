class Curis {
  float posX, posY, tam;
  float vida;
  float fome;
  float t = 2;
  float vel = 10;

  Curis() {
    posX = random(width);
    posY = random(height);
    tam = 50;
    vida = 1;
    fome = 50;
  }

  void spawnC() {      
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
    while (vida < 20) {
      vida += 0.01;
    }
    do {
      fill(0);
      ellipse(posX, posY, tam, tam);      
      fome -= 0.01;
      t += random(-0.02, 0.02);
      c.posX += random(-vel, vel);
      println(vida);
      println(fome);
    } while (vida > 0 && fome > 0);
  }
}
