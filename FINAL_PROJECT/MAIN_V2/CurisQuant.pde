class PVector {

  float x;
  float y;
  float speed;
  float t = random(20, 50);
  float life = 255;
  float time = 0;
  float v = 2;
  //float hunger = 200;


  PVector(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 50;
  }

  void move() {

    /*float numx = noise(v);
    float numy = noise(v);
    
      numx = map(numx, 0, 1, 20, width);
      numy = map(numy, 0, 1, 20, height);
      v += 0.002;*/
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
    
    //x = numx;
    //y = numy;

    
    
  }

  void eat() {
    float d = dist(mm.el.x, mm.el.y, x, y );
    for (int i = mm.el.rl.size()-1; i >= 0; i--) {
      if (d <= 25) {
        mm.el.rl.remove(i);
        /*mm.el.rl.add(new RelvaQuant(random(width), random(height), 20));
         t = 20;
         life = 255;*/
      }
    }
  }

  void sex() {


    /*boolean hit = Curis(x, y, 20, x, y, 20);               
    if (hit)
      mm.cr.crs.add(new PVector(random(width), random(height)));*/
  }


  boolean Curis(float x1, float y1, float d1, float x2, float y2, float d2) {


    float xDist = x1-x2;
    float yDist = y1-y2;
    float distance = sqrt((xDist*xDist) + (yDist*yDist));

    if (d1/2 + d2/2 > distance) {
      return true;
    } else {
      return false;
    }
  }

  void life() {
  if (millis() >= time) {
      time = millis() + 2000;
      ellipse(width/2,height/2,50,50);
    }
  }
  


  /*boolean hungry() {
   hunger--;
   if (hunger < 0) {
   return true;
   } else {
   return false;
   }
   }*/

  /*boolean finished() {
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
   }*/


  void display() {
    stroke(255, life);
    fill(0, 255, life);
    ellipse(x, y, t, t);
    /*println(t);
     println(life);
     println(hunger);*/
  }
}
