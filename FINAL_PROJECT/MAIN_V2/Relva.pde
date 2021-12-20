class Relva {

  ArrayList<RelvaQuant> rl;
  float x,y;

  Relva(int n) {
    rl = new ArrayList<RelvaQuant>();  
  for(int k = 0; k < 5; k++) {
      rl.add(new RelvaQuant(random(width), random(height), 20));    
  }
    }
    void desenha_relva() {
      for (int i = rl.size()-1; i >= 0; i--) {

        RelvaQuant rq = rl.get(i);
        rq.display();
        
      }
    }
  }
