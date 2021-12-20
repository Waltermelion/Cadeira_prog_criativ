class CurisQuant {

  float x;
  float y;
  float speed;
  float t = 20;
  float life = 255;
  

  CurisQuant(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 10;
  }

  void move() {
    
    if (x < t/2) {
      x = t/2;
    }  
    if (x > width-t/2) {
      x = width-t/2;
    }  
    if (y > height-t/2) {
      y = height-t/2;
    }  
    if (y < t/2) {
      y = t/2;
    }
    
    y += random(-speed, speed);

    x += random(-speed, speed);
  }
  
  void eat(){
    
  }

  boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
  
  boolean tamanho() {
    t--;
    if (t < 0) {
      return true;
    } else {
      return false;
    }
  }


  void display() {
    stroke(255, life);
    fill(0, 255, life);
    ellipse(x, y, t, t);
  }
}
