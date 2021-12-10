class Bola{
  float posX,posY,tam,ang;
  
  Bola(){
    tam = 30;
    ang = 0.0;
    
    
  }
  
  
  void desenha(){
  float cx = width/2;
  float cy = height/2;
  float r = mouseX;
  
  posX = cx + r * cos(ang);
  posY = cy + r * sin(ang);
  
  stroke(0);
  line(cx,cy,posX,posY);
  fill(0);
  ellipse(posX,posY,tam,tam);
  
  ang += 0.02;
  }
}
