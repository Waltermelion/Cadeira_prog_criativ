class Pessoa {
float posX, posY, pWidth, pHeight, btam;
color cor;
float mediaWidth, dpWidth,mediaHeight, dpHeight;

  Pessoa(float x) {
    mediaWidth = 50;    
    dpWidth = 20;
    mediaHeight = 100;    
    dpHeight = 20;
    
    pWidth = randomGaussian();
    pWidth = pWidth * dpWidth + mediaWidth;
    pHeight = randomGaussian();
    pHeight = pHeight * dpHeight + mediaHeight;
    posX = x;
    posY = height/2;
    btam = 50;
    cor = color(0,0,255);    
  }
  
  void desenha(){
  noStroke();  
  fill(cor);
  ellipse(posX,(posY-pHeight/2)-30,btam,btam);
  fill(cor);
  rect(posX,posY,pWidth,pHeight);  
  }
}
