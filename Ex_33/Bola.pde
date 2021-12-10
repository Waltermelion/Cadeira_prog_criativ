class Bola{
  float posX,posY,tam,ang;
  
  Bola(float x){
    tam = 30;    
    ang = x;    
  }
  
  
  void desenha(){
  float cx = width/2;
  float cy = height/2;
  float r = 300;
  
  posX = cx + r * cos(ang);
  posY = cy + r * sin(ang);
  
  
  fill(0);
  ellipse(posX,posY,tam,tam);
  ang += 0.05;
  }
}
