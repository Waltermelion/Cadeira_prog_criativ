class Palavra{
 float posX, posY;
 
 
 Palavra(){
   posX = random(0, 500);
   posY = random(0, 500);
   
 }
 
 void desenha(){   
  rect(posX, posY, 50, 50);   
 }
}
