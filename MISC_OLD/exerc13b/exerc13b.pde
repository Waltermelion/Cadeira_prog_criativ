Block[] blocks;

void setup() {
  size(500, 500);
  blocks = new Block[5];
  blocks[0] = new Block(random(width), random(height));
  blocks[1] = new Block(random(width), random(height));
  blocks[2] = new Block(random(width), random(height));
  blocks[3] = new Block(random(width), random(height));
  blocks[4] = new Block(random(width), random(height));
}

void draw() {
  background(255);
  blocks[0].desenha();
  blocks[1].desenha();
  blocks[2].desenha();
  blocks[3].desenha();
  blocks[4].desenha();
}

void mouseReleased() {
  if (mouseX > blocks[0].posX && 
    mouseX < blocks[0].posX+blocks[0].size && 
    mouseY > blocks[0].posY && 
    mouseY < blocks[0].posY+blocks[0].size) {
    if(blocks[0].active == false) blocks[0].active = true;
    else blocks[0].active = false;
  }
  
  if (mouseX > blocks[1].posX && 
    mouseX < blocks[1].posX+blocks[1].size && 
    mouseY > blocks[1].posY && 
    mouseY < blocks[1].posY+blocks[1].size) {
    if(blocks[1].active == false) blocks[1].active = true;
    else blocks[1].active = false;
  }
  
  if (mouseX > blocks[2].posX && 
    mouseX < blocks[2].posX+blocks[2].size && 
    mouseY > blocks[2].posY && 
    mouseY < blocks[2].posY+blocks[2].size) {
    if(blocks[2].active == false) blocks[2].active = true;
    else blocks[2].active = false;
  }
  
  if (mouseX > blocks[3].posX && 
    mouseX < blocks[3].posX+blocks[3].size && 
    mouseY > blocks[3].posY && 
    mouseY < blocks[3].posY+blocks[3].size) {
    if(blocks[3].active == false) blocks[3].active = true;
    else blocks[3].active = false;
  }
  
  if (mouseX > blocks[4].posX && 
    mouseX < blocks[4].posX+blocks[4].size && 
    mouseY > blocks[4].posY && 
    mouseY < blocks[4].posY+blocks[4].size) {
    if(blocks[4].active == false) blocks[4].active = true;
    else blocks[4].active = false;
  }
}
