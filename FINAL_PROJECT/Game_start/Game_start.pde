Main_Menu mm;
boolean gs = false;

void setup(){
  fullScreen();
  mm = new Main_Menu();
}

void draw(){
  background(50,50,150);  
  mm.desenha();
}
