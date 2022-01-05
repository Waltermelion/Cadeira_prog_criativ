class Main_Menu {

  Button start_game, options, exit, back, curis1, rakis1, gafis1, quantidade, more, less, quantidadeNum;
  Curis cr;
  Rakis rk;
  Gafis gf;
  Relva el;

  String current_screen;

  int numeroCr = 10;
  int numeroRk = 2;
  int numeroGf = 4;
  int numeroRlv = 10;

  Main_Menu() {

    cr = new Curis(numeroCr);
    rk = new Rakis(numeroRk);
    gf = new Gafis(numeroGf);
    el = new Relva(numeroRlv);
    current_screen = "MAIN MENU";     // Identificar que este ecrã se chama ou se autotitula-se de MAIN MENU
  }

  void desenha() {
    background(COLOR_BACKGROUND);

    if (current_screen .equals("MAIN MENU")) {            //Condição dependendo do current screen que está
      display_main_menu();
    } else if (current_screen .equals("GAME_START")) {
      display_game_start();
    } else if (current_screen .equals("OPTIONS_MENU")) {
      display_options_menu();
    } else if (current_screen .equals("OPTIONS_CONF_CURIS")) {
      display_options_conf_curis();
    } else if (current_screen .equals("OPTIONS_CONF_RAKIS")) {
      display_options_conf_rakis();
    } else if (current_screen .equals("OPTIONS_CONF_GAFIS")) {
      display_options_conf_gafis();
    }
  }

  void display_main_menu() {      //Main menu com as 3 opçoes
    start_game = new Button("START GAME", 400, 550, 630, 600);
    options = new Button("OPTIONS", 850, 550, 1030, 600);
    exit = new Button("EXIT", 1250, 550, 1380, 600);
    start_game.desenha_button();
    options.desenha_button();
    exit.desenha_button();
  }

  void display_game_start() {  //Dentro do START GAME

    back = new Button("VOLTAR", 50, 40, 200, 90);
    el.desenha_relva();
    cr.desenha_curis();
    rk.desenha_rakis();
    gf.desenha_gafis();
    

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {

      fill(mm.back.COLOR_BUTTONS);
      rect(mm.back.x, mm.back.y, mm.back.t - mm.back.x, mm.back.ta - mm.back.y, mm.back.button_corner);
      fill(0);  // black shadow
      text(mm.back.my_text1, 19 + mm.back.x, 10 +mm.back.y + ( (mm.back.ta - mm.back.y) / 2 ));
      fill(mm.back.COLOR_WHITE);
      text(mm.back.my_text1, 21 + mm.back.x, 12 + mm.back.y + ( (mm.back.ta - mm.back.y) / 2 ));
      back.desenha_button();
    } else {
      fill(mm.back.COLOR_BUTTONS, 50);
      rect(mm.back.x, mm.back.y, mm.back.t - mm.back.x, mm.back.ta - mm.back.y, mm.back.button_corner);
      fill(0, 50);  // black shadow
      text(mm.back.my_text1, 19 + mm.back.x, 10 +mm.back.y + ( (mm.back.ta - mm.back.y) / 2 ));
      fill(mm.back.COLOR_WHITE, 50);
      text(mm.back.my_text1, 21 + mm.back.x, 12 + mm.back.y + ( (mm.back.ta - mm.back.y) / 2 ));
    }
    fill(0, 255, 255);
    text(cr.crs.size(), width-150, 100);
    text("Alive Curis", width-150, 150);
    fill(255, 255, 0);
    text(rk.rks.size(), width-300, 100);
    text("Alive Rakis", width-300, 150);
    fill(255, 0, 255);
    text(gf.gfs.size(), width-450, 100);
    text("Alive Gafis", width-450, 150);
  }

  void display_options_menu() {  //Dentro do OPTION que contem 4 botoes, um de voltar e 3 dos seres

    mm.back = new Button("VOLTAR", 50, 40, 200, 90);
    curis1 = new Button("CURIS", 850, 350, 1000, 400);
    gafis1 = new Button("GAFIS", 850, 550, 1000, 600);
    rakis1 = new Button("RAKIS", 850, 750, 1000, 800);
    curis1.desenha_button();
    gafis1.desenha_button();
    rakis1.desenha_button();
    back.desenha_button();
  }

  void display_options_conf_curis() {    //Dentro do CURIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero

    back = new Button("VOLTAR", 50, 40, 200, 90);
    quantidade = new Button("QUANTIDADE", 850, 400, 1070, 450);

    more = new Button("+", 750, 550, 810, 580);
    less = new Button("-", 1125, 550, 1180, 580);

    quantidadeNum = new Button(str(numeroCr), 930, 550, 990, 580);
    more = new Button("+", 1125, 550, 1180, 580);
    less = new Button("-", 750, 550, 810, 580);

    back.desenha_button();
    quantidade.desenha_button();
    quantidadeNum.desenha_button();
    more.desenha_button();
    less.desenha_button();
  }

  void display_options_conf_rakis() {    //Dentro do RAKIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero

    back = new Button("VOLTAR", 50, 40, 200, 90);
    quantidade = new Button("QUANTIDADE", 850, 400, 1070, 450);

    more = new Button("+", 750, 550, 810, 580);
    less = new Button("-", 1125, 550, 1180, 580);

    quantidadeNum = new Button(str(numeroRk), 930, 550, 990, 580);
    more = new Button("+", 1125, 550, 1180, 580);
    less = new Button("-", 750, 550, 810, 580);

    back.desenha_button();
    quantidade.desenha_button();
    quantidadeNum.desenha_button();
    more.desenha_button();
    less.desenha_button();
  }

  void display_options_conf_gafis() {      //Dentro do GAFIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero

    back = new Button("VOLTAR", 50, 40, 200, 90);
    quantidade = new Button("QUANTIDADE", 850, 400, 1070, 450);

    more = new Button("+", 750, 550, 810, 580);
    less = new Button("-", 1125, 550, 1180, 580);

    quantidadeNum = new Button(str(numeroGf), 930, 550, 990, 580);
    more = new Button("+", 1125, 550, 1180, 580);
    less = new Button("-", 750, 550, 810, 580);

    back.desenha_button();
    quantidade.desenha_button();
    quantidadeNum.desenha_button();
    more.desenha_button();
    less.desenha_button();
  }
}
