class CurisQuant {// class da quantidade de Curis

  ArrayList<Curis> crs;// ArrayList do Curis, permitindo-nos acrescentar e retirar quantos quisermos

  CurisQuant(int n) {// Manda o número de Curis para trás para ser mais fácilmente alterado
    crs = new ArrayList<Curis>();// construtor ArrayList
  }
  void desenha_curis() {// Desenha os Curis
    for (int i = crs.size()-1; i >= 0; i--) {

      Curis sr = crs.get(i); // (get(i)) apanha-me o curis atual e mete-lo numa variável chamada sr      
      sr.display();  
      sr.life();      
      sr.move();
      sr.sex();   
      if(sr.isOld){// se o ser for velho, morre
        crs.remove(i);
      }
    }
  }
}
