class Gota {
float posX, posY, tam;
color cor;
float mediaX, mediaY, dp, mediaTam, dpTam;

  Gota() {
    mediaTam = 20;    
    mediaX = width/2;
    mediaY = height/2;
    dpTam = 20;
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
