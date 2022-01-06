class RelvaQuant {// class da quantidade de Relva

  ArrayList<Relva> rl;// ArrayList do Rakis, permitindo-nos acrescentar e retirar quantos quisermos

  RelvaQuant(int n) {
    rl = new ArrayList<Relva>();  // construtor ArrayList
  for(int k = 0; k < n; k++) {
      rl.add(new Relva(random(width), random(height), 20));// adiciona N relvas ao arraylist   
  }
    }
    void desenha_relva() {// Desenha a Relva
      for (int i = rl.size()-1; i >= 0; i--) {

        Relva rq = rl.get(i);
        rq.display();
        
      }
    }
  }
