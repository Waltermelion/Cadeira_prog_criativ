class Curis {//Classe do ser "Curis"
  float posX, posY, tam;
  float vida;//Determina quanta vida o Curis tem, se chegar a 0 o ser morre
  float fome;//Determina quanta fome o Curis tem, se chegar ao 0 começa a perder vida
  float t = 2;
  float vel = 10;//Velocidade do ser
  color c;
  Boolean alive;//Determina se está vivo ou não, false = ele morre

  Curis() {
    posX = random(width);
    posY = random(height);
    tam = 20;
    vida = 1;
    fome = 50;
    alive = true;
    c = color(255,0,0);
  }

  void spawnC() {
    //float num = noise(t);
    //num = map(num, 0, 1, 0, width);    
    //posY = num;
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
    if (vida >= 20){
      vida = 20;
    }
    if (fome <= 0){
      alive = false;
    }
    while (alive) {
      fill(c);
      ellipse(posX, posY, tam, tam);      
      fome -= 0.0001;
      vida += 0.0001;
      //t += random(-0.02, 0.02);
      posY += random(-vel, vel);
      posX += random(-vel, vel);
      //println(vida);
      //println(fome);
    }
  }
}
