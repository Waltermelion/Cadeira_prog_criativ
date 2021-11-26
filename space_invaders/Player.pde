class Nave {
  float posX, posY, vel;
  Bullet b;
  Nave(float x, float v) {
    posX = x;
    vel = v;
    posY = height-100;
  }
  void desenha() {
    fill(0);
    rect(posX, posY, 50, 50);
  }
  
  void moveLeft() {
   posX -= vel; 
  }
  void moveRight(){
    posX += vel;
  }
  void shoot(){
    
  }
}
