class Gafis {
  float posX, posY, tam;
  float vida;
  float fome;
  float t = 2;
  float vel = 10;
  int intX, intY;
  float dx = random(-1, 1);
  float dy = random(-1, 1);

  int bored = 0;
  Map foodMap;
  private float WANDER_CHANCE = .92;

  Gafis(int spawnX, int spawnY, Map _foodMap) {
    posX = float(spawnX);
    posY = float(spawnY);
    tam = 50;
    vida = 20;
    fome = 50;
    intX = spawnX;
    intY = spawnY;
    foodMap = _foodMap;
  }

  void spawnG() {
    fill(0);
    ellipse(posX, posY, tam, tam);    

    if (random(1) > WANDER_CHANCE) dx += random(-1, 1);
    if (random(1) > WANDER_CHANCE) dy += random(-1, 1);

    // Look for food
    int[] direction = foodMap.getStrongest(intX, intY);
    dx += direction[0] * random(1.5);
    dy += direction[1] * random(1.5);

    // Bounding limits, bounce off of edge
    if (posX<2) dx = 1;
    if (posX>width-2) dx = -1;
    if (posY<2) dy = 1;
    if (posY>height-2) dy = -1;
    // Speed limit
    dx = Math.min(dx, 5);
    dx = Math.max(dx, -5);
    dy = Math.min(dy, 5);
    dy = Math.max(dy, -5);
    // Move
    posX += dx;
    posY += dy;
    intX = floor(posX);
    intY = floor(posY);   
  }  
}
