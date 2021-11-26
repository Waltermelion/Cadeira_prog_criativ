Nuvem n1,n2,n3;

void setup(){
  fullScreen(P2D);
  n1 = new Nuvem("cloud1.png");
  n2 = new Nuvem("cloud2.png");
  n3 = new Nuvem("cloud3.png");
}

void draw(){
  background(50,50,150);
  n1.desenha();
  n2.desenha();
  n3.desenha();
}
