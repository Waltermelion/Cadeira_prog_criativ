class RakisQuant {// class da quantidade de Rakis

  ArrayList<Rakis> rks;// ArrayList do Rakis, permitindo-nos acrescentar e retirar quantos quisermos

  RakisQuant(int n) {
    rks = new ArrayList<Rakis>();// construtor ArrayList
  }
  void desenha_rakis() {// Desenha os Rakis
    for (int i = rks.size()-1; i >= 0; i--) {

      Rakis sr = rks.get(i);// (get(i)) apanha-me o Rakis atual e mete-lo numa variável chamada sr 
      sr.display();
      sr.life();
      if(sr.isOld){// se o ser for velho, morre
        rks.remove(i);
      }
    }
  }
}
