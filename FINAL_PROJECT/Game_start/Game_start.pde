Main_Menu mm;

final color COLOR_WHITE = color(255);
final color COLOR_BACKGROUND = color(0);

void settings() {
  fullScreen();
  //size(1800, 800);
}

void setup() {
  background(COLOR_BACKGROUND);
  mm = new Main_Menu();

  mm.current_screen = "MAIN MENU";
}

void draw() {
  mm.desenha();
}

void buttons_info() {
  mm.buttons_info();
}

void display_main_menu() {
  mm.display_main_menu();
}

void display_game_start() {
  mm.display_game_start();
}
void display_options_menu() {
  mm.display_options_menu();
}

void display_options_conf() {
  mm.display_options_conf_curis();
  mm.display_options_conf_rakis();
  mm.display_options_conf_gafis();
}

void mousePressed() {      // referencia https://www.youtube.com/watch?v=HzI5H3n3PRQ&t=4228s
  if (mm.current_screen .equals("MAIN MENU")) {       //Se o ecrã que estiver se chamar "MAIN MENU" faz...

    if (mouseX > mm.button_game_start[0] && mouseX < mm.button_game_start[2] && mouseY > mm.button_game_start[1] && mouseY < mm.button_game_start[3]) {
      mm.current_screen = "GAME_START";      //Se clicar no botão GAME START vou para o ecrã GAME_START

      for (int k = 0; k < mm.numeroCr; k++) {
        mm.cr.crs.add(new SeresColection(random(width), random(height)));
      }
      
      for (int k = 0; k < mm.numeroRk; k++) {
        mm.rk.rks.add(new RakisQuant(random(width), random(height)));
      }
      
      for (int k = 0; k < mm.numeroGf; k++) {
        mm.gf.gfs.add(new GafisQuant(random(width), random(height)));
      }
      
    }

    if (mouseX > mm.button_options[0] && mouseX < mm.button_options[2] && mouseY > mm.button_options[1] && mouseY < mm.button_options[3]) {
      mm.current_screen = "OPTIONS_MENU";     //Se clicar no botão OPTIONS vou para o ecrã OPTIONS_MENU
    }

    if (mouseX > mm.button_exit[0] && mouseX < mm.button_exit[2] && mouseY > mm.button_exit[1] && mouseY < mm.button_exit[3]) {
      exit();     //Se clicar no botão EXIT saio do programa
    }
  } else if (mm.current_screen .equals("GAME_START")) {   //Se o ecrã que estiver se chamar "GAME_START" faz...

    if (mouseX > mm.button_back_5[0] && mouseX < mm.button_back_5[2] && mouseY > mm.button_back_5[1] && mouseY < mm.button_back_5[3]) {
      mm.current_screen = "MAIN MENU";     //Se clicar no botão VOLTAR volto para o ecrã MAIN_MENU
      return;
    }
  } else if (mm.current_screen .equals("OPTIONS_MENU")) {  //Se o ecrã que estiver se chamar "OPTIONS_MENU" faz...

    if (mouseX > mm.button_curis[0] && mouseX < mm.button_curis[2] && mouseY > mm.button_curis[1] && mouseY < mm.button_curis[3]) {
      mm.current_screen = "OPTIONS_CONF_CURIS";    //Se clicar no botão CURIS vou para o ecrã OPTIONS_CONF_CURIS
    }

    if (mouseX > mm.button_rakis[0] && mouseX < mm.button_rakis[2] && mouseY > mm.button_rakis[1] && mouseY < mm.button_rakis[3]) {
      mm.current_screen = "OPTIONS_CONF_RAKIS";      //Se clicar no botão RAKIS vou para o ecrã OPTIONS_CONF_RAKIS
    }

    if (mouseX > mm.button_gafis[0] && mouseX < mm.button_gafis[2] && mouseY > mm.button_gafis[1] && mouseY < mm.button_gafis[3]) {
      mm.current_screen = "OPTIONS_CONF_GAFIS";      //Se clicar no botão GAFIS vou para o ecrã OPTIONS_CONF_GAFIS
    }

    if (mouseX > mm.button_back_1[0] && mouseX < mm.button_back_1[2] && mouseY > mm.button_back_1[1] && mouseY < mm.button_back_1[3]) {
      mm.current_screen = "MAIN MENU";        //Se clicar no botão VOLTAR volto para o ecrã MAIN_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_CURIS")) {  //Se o ecrã que estiver se chamar "OPTIONS_CONF_CURIS" faz...

    if (mouseX > mm.button_less[0] && mouseX < mm.button_less[2] && mouseY > mm.button_less[1] && mouseY < mm.button_less[3]) {
      mm.numeroCr = mm.numeroCr - 1;
    }

    if (mouseX > mm.button_more[0] && mouseX < mm.button_more[2] && mouseY > mm.button_more[1] && mouseY < mm.button_more[3]) {
      mm.numeroCr = mm.numeroCr + 1;
    }

    if (mouseX > mm.button_back_2[0] && mouseX < mm.button_back_2[2] && mouseY > mm.button_back_2[1] && mouseY < mm.button_back_2[3]) {
      mm.current_screen = "OPTIONS_MENU";      // Volta para o OPTIONS_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_RAKIS")) {  //Se o ecrã que estiver se chamar "OPTIONS_CONF_RAKIS" faz...

    if (mouseX > mm.button_less1[0] && mouseX < mm.button_less1[2] && mouseY > mm.button_less1[1] && mouseY < mm.button_less1[3]) {
      mm.numeroRk = mm.numeroRk - 1;
    }

    if (mouseX > mm.button_more1[0] && mouseX < mm.button_more1[2] && mouseY > mm.button_more1[1] && mouseY < mm.button_more1[3]) {
      mm.numeroRk = mm.numeroRk + 1;
    }

    if (mouseX > mm.button_back_3[0] && mouseX < mm.button_back_3[2] && mouseY > mm.button_back_3[1] && mouseY < mm.button_back_3[3]) {
      mm.current_screen = "OPTIONS_MENU";    // Volta para o OPTIONS_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_GAFIS")) {  //Se o ecrã que estiver se chamar "OPTIONS_CONF_GAFIS" faz...

    if (mouseX > mm.button_less2[0] && mouseX < mm.button_less2[2] && mouseY > mm.button_less2[1] && mouseY < mm.button_less2[3]) {
      mm.numeroGf = mm.numeroGf - 1;
    }

    if (mouseX > mm.button_more2[0] && mouseX < mm.button_more2[2] && mouseY > mm.button_more2[1] && mouseY < mm.button_more2[3]) {
      mm.numeroGf = mm.numeroGf + 1;
    }

    if (mouseX > mm.button_back_4[0] && mouseX < mm.button_back_4[2] && mouseY > mm.button_back_4[1] && mouseY < mm.button_back_4[3]) {
      mm.current_screen = "OPTIONS_MENU";    // Volta para o OPTIONS_MENU
    }
  }
}
