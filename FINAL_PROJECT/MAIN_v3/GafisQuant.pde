class GafisQuant {// class da quantidade de Gafis

  ArrayList<Gafis> gfs;// ArrayList do Gafis, permitindo-nos acrescentar e retirar quantos quisermos

  GafisQuant(int n) {
    gfs = new ArrayList<Gafis>();// construtor ArrayList
  }
  void desenha_gafis() {// Desenha os Gafis
    for (int i = gfs.size()-1; i >= 0; i--) {

      Gafis sr = gfs.get(i);// (get(i)) apanha-me o Gafis atual e mete-lo numa variável chamada sr 
      sr.display();
      sr.life();      
    }
  }
}
