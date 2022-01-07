class Curis {// classe do curis

  float x;// x do curis
  float y;// y do curis
  float t = 5;// tamanho inicial do curis
  float time = 0;// variavel do tempo, relacionada com o crescimento deles
  float time2 = 0;// variavel do tempo, relacionada com o nascer deles
  float tempotanho = 1;// tempo do ser aumentar(aumenta 1 por 1 coiso do tempo que está lá em baixo)
  float xtime = random(100.0);// variavél x do perlin noise
  float ytime = random(100.0);// variavél y do perlin noise
  float increment = 0.01;// incremento do perlin noise
  boolean haveProc = false;// booleana que controla se reproduz ou não

  Curis(float x1, float y1) {
    x = x1;
    y = y1;
  }

  void move() {
    x = noise(xtime) * width;// Perlin noise para movimentar aleatóriamente no canvas
    y = noise(ytime) * height;
    xtime += increment;
    ytime += increment;

    if (x < t/2) {// Não saias do canvas
      x = t/2;
    }
    if (x > width-t/2) {
      x = width-t/2;
    }
    if (y > height-t/2) {
      y = height-t/2;
    }
    if (y < t/2) {
      y = t/2;
    }
  }
  void sex() {// Reproduz
    for (int i = mm.cr.crs.size()-1; i >= 0; i--) {// Percorre o arraylist
      float d = dist(mm.cr.crs.get(i).x, mm.cr.crs.get(i).y, x, y);// Determina a distância entre este ser, e o ser i no arraylist
      
      if ((d <= 30 && t == 25) && haveProc) {// Se eles estiverem a beira um do outro e o tamanho do curis ser 25(idade adulta)...
        mm.cr.crs.add(new Curis(this.x, this.y));// Adiciona um novo Curis
        haveProc = false;// boleana para falso
      } else {
        if (millis() >= time2) {
          time2 = millis() + 5000;// a cada 5 segundos...
          haveProc = true;// boleana para verdadeiro
        }
      }
    }
  }

  void life() {// Quando o curis aparece, aparece pequeno e vai crescendo ao longo do tempo...
    if (millis() >= time) {
      time = millis() + 500;// a cada metade de segundo
      t += tempotanho;
    } else if (t == 25) {// ...até a idade adulta
      tempotanho = 0;// param de crescer
    }
  }

  void display() {// desenha o curis no canvas
    stroke(255, 255);
    fill(0, 255, 255);
    ellipse(x, y, t, t);// curis
    strokeWeight(1);
    stroke(255);
    fill(0, 255, 0);// cor da barra de vida
    rect(x - 10, y - t/2 - 10, 20, 2);// barra de vida
  }
}
