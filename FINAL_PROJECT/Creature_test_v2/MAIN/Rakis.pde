class Rakis {
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

  Rakis(int spawnX, int spawnY, Map _foodMap) {
    posX = float(spawnX);
    posY = float(spawnY);
    tam = 100;
    vida = 20;
    fome = 50;
    intX = spawnX;
    intY = spawnY;
    foodMap = _foodMap;
  }

  void spawnR() {
    fill(0);
    ellipse(posX, posY, tam, tam);
    
    if (random(1) > WANDER_CHANCE) dx += random(-1, 1);
    if (random(1) > WANDER_CHANCE) dy += random(-1, 1);

    // Look for food
    int[] direction = foodMap.getStrongest(intX, intY);
    dx += direction[0] * random(1.5);
    dy += direction[1] * random(1.5);

    // Bounding limits, bounce off of edge
    if (posX<tam) dx = 1;
    if (posX>width-tam) dx = -1;
    if (posY<tam) dy = 1;
    if (posY>height-tam) dy = -1;
    // Speed limit
    dx = Math.min(dx, 2);
    dx = Math.max(dx, -2);
    dy = Math.min(dy, 2);
    dy = Math.max(dy, -2);
    // Move
    posX += dx;
    posY += dy;
    intX = floor(posX);
    intY = floor(posY);
  }
}
