class Main_Menu {

  String current_screen;
  int[] button_game_start, button_exit, button_options, button_back_1, button_back_2;
  int[] button_curis, button_rakis, button_gafis;
  int[] button_quantidade, button_more, button_less, numero;

  final color COLOR_WHITE = color(255);
  final color COLOR_BACKGROUND = color(0);
  final color COLOR_BUTTONS = color(50, 50, 255);
  final color COLOR_CURSOR = color(255, 0, 0);

  Main_Menu() {

    button_game_start = new int[4];
    button_exit = new int[4];
    button_options = new int[4];

    button_back_1 = new int[4];
    button_back_2 = new int[4];

    button_curis = new int[4];
    button_rakis = new int[4];
    button_gafis = new int[4];

    button_quantidade = new int[4];
    button_more = new int[4];
    button_less = new int[4];
    numero = new int[4];

    current_screen = "MAIN MENU";     // Identificar que este ecrã se chama ou se autotitula-se de MAIN MENU

    buttons_info();
  }

  void desenha() {
    background(COLOR_BACKGROUND);

    if (current_screen .equals("MAIN MENU")) {
      display_main_menu();
    } else if (current_screen .equals("OPTIONS_MENU")) {
      display_options_menu();
    } else if (current_screen .equals("OPTIONS_CONF")) {
      display_options_conf();
    }
  }

  void buttons_info() {

    button_game_start[0] = 400;      //x1
    button_game_start[1] = 550;      //y1
    button_game_start[2] = 630;      //t1
    button_game_start[3] = 600;      //t2

    button_options[0] = 850;      //x1
    button_options[1] = 550;      //y1
    button_options[2] = 1030;      //t1
    button_options[3] = 600;      //t2

    button_exit[0] = 1250;      //x1
    button_exit[1] = 550;      //y1
    button_exit[2] = 1380;      //t1
    button_exit[3] = 600;      //t2

    // back to main menu
    button_back_1[0] = 50;      //x1
    button_back_1[1] = 40;      //y1
    button_back_1[2] = 200;     //t1
    button_back_1[3] = 90;      //t2

    button_curis[0] = 850;      //x1
    button_curis[1] = 350;      //y1
    button_curis[2] = 1000;      //t1
    button_curis[3] = 400;      //t2

    button_rakis[0] = 850;      //x1
    button_rakis[1] = 550;      //y1
    button_rakis[2] = 1000;      //t1
    button_rakis[3] = 600;      //t2

    button_gafis[0] = 850;      //x1
    button_gafis[1] = 750;      //y1
    button_gafis[2] = 1000;      //t1
    button_gafis[3] = 800;      //t2

    //back to OPTION_MENU
    button_back_2[0] = 50;      //x1
    button_back_2[1] = 40;      //y1
    button_back_2[2] = 200;     //t1
    button_back_2[3] = 90;

    button_quantidade[0] = 850;      //x1
    button_quantidade[1] = 400;      //y1
    button_quantidade[2] = 1070;      //t1
    button_quantidade[3] = 450;      //t2

    button_more[0] = 750;
    button_more[1] = 550;
    button_more[2] = 810;
    button_more[3] = 580;

    button_less[0] = 1125;
    button_less[1] = 550;
    button_less[2] = 1180;
    button_less[3] = 580;

    numero[0] = 930;
    numero[1] = 550;
    numero[2] = 1000;
    numero[3] = 580;
  }

  void desenha_button(String my_text, int x1, int y1, int t1, int t2) {

    int button_corner = 15;
    textSize(32);
    stroke(COLOR_WHITE);
    strokeWeight(3);
    fill(COLOR_BUTTONS);

    rect(x1, y1, t1 - x1, t2 - y1, button_corner);

    fill(0);  // black shadow
    text(my_text, 19 + x1, 10 + y1 + ( (t2 - y1) / 2 ));

    fill(COLOR_WHITE);
    text(my_text, 21 + x1, 12 + y1 + ( (t2 - y1) / 2 ));
  }

  void display_main_menu() {
    desenha_button("START GAME", button_game_start[0], button_game_start[1], button_game_start[2], button_game_start[3]);
    desenha_button("OPTIONS", button_options[0], button_options[1], button_options[2], button_options[3]);
    desenha_button("EXIT", button_exit[0], button_exit[1], button_exit[2], button_exit[3]);
  }

  void display_options_menu() {
    desenha_button("VOLTAR", button_back_1[0], button_back_1[1], button_back_1[2], button_back_1[3]);
    desenha_button("CURIS", button_curis[0], button_curis[1], button_curis[2], button_curis[3]);
    desenha_button("GAFIS", button_gafis[0], button_gafis[1], button_gafis[2], button_gafis[3]);
    desenha_button("RAKIS", button_rakis[0], button_rakis[1], button_rakis[2], button_rakis[3]);
  }

  void display_options_conf() {
    desenha_button("VOLTAR", button_back_2[0], button_back_2[1], button_back_2[2], button_back_2[3]);
    desenha_button("QUANTIDADE", button_quantidade[0], button_quantidade[1], button_quantidade[2], button_quantidade[3]);
    desenha_button("+", button_more[0], button_more[1], button_more[2], button_more[3]);
    desenha_button("-", button_less[0], button_less[1], button_less[2], button_less[3]);
    desenha_button("10", numero[0], numero[1], numero[2], numero[3]);
  }
}
