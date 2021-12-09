class Pessoa {
float posX, posY, tam;
color cor;
float mediaWidth, dpWidth,mediaHeight, dpHeight;

  Pessoa() {
    mediaWidth = 20;    
    dpWidth = 20;
    dp = 100;    
    posX = randomGaussian();
    posX = posX * dp + mediaX;
    posY = randomGaussian();
    posY = posY * dp + mediaY;
    tam = randomGaussian();
    tam = tam * dpTam + mediaTam;    
    cor = color(255,0,0,random(255));    
  }
  
  void desenha(){
  noStroke();  
  fill(cor);
  ellipse(posX,posY,tam,tam);
  }
}
