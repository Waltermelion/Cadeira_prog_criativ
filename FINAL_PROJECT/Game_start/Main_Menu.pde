class Main_Menu {

    Curis cr;
    Rakis rk;
    Gafis gf; 
    Relva el;
  
  String current_screen;
  int[] button_game_start, button_exit, button_options, button_back_1, button_back_2, button_back_3, button_back_4, button_back_5;
  int[] button_curis, button_rakis, button_gafis;
  int[] button_quantidade, button_more, button_less, button_more1, button_less1, button_more2, button_less2, numero;

  final color COLOR_WHITE = color(255);
  final color COLOR_BACKGROUND = color(0);
  final color COLOR_BUTTONS = color(50, 50, 255);

  int numeroCr = 2;
  int numeroRk = 2;
  int numeroGf = 2;
  
  Main_Menu() {

    cr = new Curis(numeroCr);
    rk = new Rakis(numeroRk);
    gf = new Gafis(numeroGf);
    el = new Relva();
    
    button_game_start = new int[4];
    button_exit = new int[4];
    button_options = new int[4];

    button_back_1 = new int[4];
    button_back_2 = new int[4];
    button_back_3 = new int[4];
    button_back_4 = new int[4];
    button_back_5 = new int[4];

    button_curis = new int[4];
    button_rakis = new int[4];
    button_gafis = new int[4];

    button_quantidade = new int[4];
    button_more = new int[4];
    button_less = new int[4];
    button_more1 = new int[4];
    button_less1 = new int[4];
    button_more2 = new int[4];
    button_less2 = new int[4];
    numero = new int[4];

    current_screen = "MAIN MENU";     // Identificar que este ecrã se chama ou se autotitula-se de MAIN MENU

    buttons_info();
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

  void buttons_info() {            // referencia https://www.youtube.com/watch?v=HzI5H3n3PRQ&t=4228s

    button_game_start[0] = 400;      //x1
    button_game_start[1] = 550;      //y1
    button_game_start[2] = 630;      //t1
    button_game_start[3] = 600;      //t2
    
    button_back_5[0] = 50;      //x1
    button_back_5[1] = 40;      //y1
    button_back_5[2] = 200;     //t1
    button_back_5[3] = 90;

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

    button_less[0] = 750;
    button_less[1] = 550;
    button_less[2] = 810;
    button_less[3] = 580;

    button_more[0] = 1125;
    button_more[1] = 550;
    button_more[2] = 1180;
    button_more[3] = 580;
    
    button_less1[0] = 750;
    button_less1[1] = 550;
    button_less1[2] = 810;
    button_less1[3] = 580;

    button_more1[0] = 1125;
    button_more1[1] = 550;
    button_more1[2] = 1180;
    button_more1[3] = 580;
    
    button_less2[0] = 750;
    button_less2[1] = 550;
    button_less2[2] = 810;
    button_less2[3] = 580;

    button_more2[0] = 1125;
    button_more2[1] = 550;
    button_more2[2] = 1180;
    button_more2[3] = 580;

    numero[0] = 930;
    numero[1] = 550;
    numero[2] = 1000;
    numero[3] = 580;

    button_back_3[0] = 50;      //x1
    button_back_3[1] = 40;      //y1
    button_back_3[2] = 200;     //t1
    button_back_3[3] = 90;

    button_back_4[0] = 50;      //x1
    button_back_4[1] = 40;      //y1
    button_back_4[2] = 200;     //t1
    button_back_4[3] = 90;
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

  void display_main_menu() {      //Main menu com as 3 opçoes
  
    desenha_button("START GAME", button_game_start[0], button_game_start[1], button_game_start[2], button_game_start[3]);
    desenha_button("OPTIONS", button_options[0], button_options[1], button_options[2], button_options[3]);
    desenha_button("EXIT", button_exit[0], button_exit[1], button_exit[2], button_exit[3]);
  }

  void display_game_start() {  //Dentro do START GAME
  
    desenha_button("VOLTAR", button_back_5[0], button_back_5[1], button_back_5[2], button_back_5[3]);
    cr.desenha_curis();
    rk.desenha_rakis();
    gf.desenha_gafis();
    el.desenha_relva();

  }
  
  void display_options_menu() {  //Dentro do OPTION que contem 4 botoes, um de voltar e 3 dos seres
  
    desenha_button("VOLTAR", button_back_1[0], button_back_1[1], button_back_1[2], button_back_1[3]);
    desenha_button("CURIS", button_curis[0], button_curis[1], button_curis[2], button_curis[3]);
    desenha_button("GAFIS", button_gafis[0], button_gafis[1], button_gafis[2], button_gafis[3]);
    desenha_button("RAKIS", button_rakis[0], button_rakis[1], button_rakis[2], button_rakis[3]);
  }

  void display_options_conf_curis() {    //Dentro do CURIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero 10 
  
    desenha_button("VOLTAR", button_back_2[0], button_back_2[1], button_back_2[2], button_back_2[3]);
    desenha_button("QUANTIDADE", button_quantidade[0], button_quantidade[1], button_quantidade[2], button_quantidade[3]);
    desenha_button("+", button_more[0], button_more[1], button_more[2], button_more[3]);
    desenha_button("-", button_less[0], button_less[1], button_less[2], button_less[3]);
    desenha_button("10", numero[0], numero[1], numero[2], numero[3]);
  }

  void display_options_conf_rakis() {    //Dentro do RAKIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero 5
  
    desenha_button("VOLTAR", button_back_3[0], button_back_3[1], button_back_3[2], button_back_3[3]);
    desenha_button("QUANTIDADE", button_quantidade[0], button_quantidade[1], button_quantidade[2], button_quantidade[3]);
    desenha_button("+", button_more1[0], button_more1[1], button_more1[2], button_more1[3]);
    desenha_button("-", button_less1[0], button_less1[1], button_less1[2], button_less1[3]);
    desenha_button("5", numero[0], numero[1], numero[2], numero[3]);
  }

  void display_options_conf_gafis() {      //Dentro do GAFIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero 20 
  
    desenha_button("VOLTAR", button_back_4[0], button_back_4[1], button_back_4[2], button_back_4[3]);
    desenha_button("QUANTIDADE", button_quantidade[0], button_quantidade[1], button_quantidade[2], button_quantidade[3]);
    desenha_button("+", button_more2[0], button_more2[1], button_more2[2], button_more2[3]);
    desenha_button("-", button_less2[0], button_less2[1], button_less2[2], button_less2[3]);
    desenha_button("20", numero[0], numero[1], numero[2], numero[3]);
  }
}
