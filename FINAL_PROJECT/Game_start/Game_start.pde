Main_Menu mm;//naunt
boolean gs = false;

void setup() {
  fullScreen();
  textSize(100);
  textAlign(CENTER);
  background(0);
  mm = new Main_Menu();
}

void draw() {
  mm.desenha();
}


void mousePressed() {
  if (mouseX > mm.x && mouseX < mm.x+mm.t && mouseY > mm.y && mouseY < mm.y+mm.t1)
    mm.b1 = true;
    
  if (mouseX > mm.x1 && mouseX < mm.x1+mm.t2 && mouseY > mm.y1 && mouseY < mm.y1+mm.t3)
    mm.b2 = true;
   
   if (mouseX > mm.x2 && mouseX < mm.x2+mm.t4 && mouseY > mm.y2 && mouseY < mm.y2+mm.t5)
   exit();
}

void mouseReleased() {
  if (mouseX > mm.x && mouseX < mm.x+mm.t && mouseY > mm.y && mouseY < mm.y+mm.t1)
    mm.b1 = true;
  
  if (mouseX > mm.x1 && mouseX < mm.x1+mm.t2 && mouseY > mm.y1 && mouseY < mm.y1+mm.t3)
    mm.b2 = true;
 
}
