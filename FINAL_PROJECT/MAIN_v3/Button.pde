class Button {// classe dos Botões

  final color COLOR_WHITE = color(255);// Cor definitiva branca
  final color COLOR_BACKGROUND = color(0);// Cor definitiva Background
  final color COLOR_BUTTONS = color(50, 50, 255);// Cor definitiva Botões
  int button_corner = 15;// Variável que controla as curvas dos rect's
  float x, y, t, ta;// X, Y, tamanho 1, tamanho 2
  String my_text1;// Variável de texto

  Button(String my_text, int x1, int y1, int t1, int t2) {// Manda para trás estas variáveis para serem configuradas no Main Menu

    x = x1;
    y = y1;
    t = t1;
    ta = t2;
    my_text1 = my_text;
  }

  void desenha_button() {// desenha o botão

    textSize(32);// tamanho do texto
    stroke(COLOR_WHITE);// cor da stroke
    strokeWeight(3);// espessura do stroke
    fill(COLOR_BUTTONS);// cor dos botões

    rect(x, y, t - x, ta - y, button_corner);// rect botão

    fill(0);  // sombra preta do texto
    text(my_text1, 19 + x, 10 + y + ( (ta - y) / 2 ));

    fill(COLOR_WHITE);// texto a branco
    text(my_text1, 21 + x, 12 + y + ( (ta - y) / 2 ));
  }
}
