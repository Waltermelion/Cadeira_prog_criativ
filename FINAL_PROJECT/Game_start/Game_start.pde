import processing.sound.*;
SoundFile s;
Sound v;

Main_Menu mm;
boolean gs = false;

void setup() {
  fullScreen();
  textSize(100);
  textAlign(CENTER);
  background(0);
  mm = new Main_Menu();
  s = new SoundFile(this,"stuck.mp3");
  s.play();
  v = new Sound(this);
}

void draw() {
  float amplitude = map(mouseY, 0, height, 0.4, 0.0);
  v.volume(amplitude);
  mm.desenha();
}
