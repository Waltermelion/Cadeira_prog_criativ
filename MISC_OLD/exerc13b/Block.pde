class Block {
  float posX, posY;
  float size;
  boolean active;

  Block(float x, float y) {
    posX = x;
    posY = y;
    size = 50;
    active = false;
  }

  void desenha() {
    if (active == false) {
      fill(200, 0, 0);
      rect(posX, posY, size, size);
      
    } else {
      fill(0, 200, 0);

      posX = mouseX - size/2;
      posY = mouseY - size/2;
      rect(posX, posY, size, size);
    }
  }
}
