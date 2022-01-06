class RelvaQuant {

  ArrayList<Relva> rl;
  float x,y;

  RelvaQuant(int n) {
    rl = new ArrayList<Relva>();  
  for(int k = 0; k < n; k++) {
      rl.add(new Relva(random(width), random(height), 20));    
  }
    }
    void desenha_relva() {
      for (int i = rl.size()-1; i >= 0; i--) {

        Relva rq = rl.get(i);
        rq.display();
        
      }
    }
  }
