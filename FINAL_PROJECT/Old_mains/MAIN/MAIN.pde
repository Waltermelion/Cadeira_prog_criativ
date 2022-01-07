Main_Menu mm;

final color COLOR_WHITE = color(255);
final color COLOR_BACKGROUND = color(0);

void settings() {
  fullScreen();
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

void display_options_menu() {
  mm.display_options_menu();
}

void display_options_conf() {
  mm.display_options_conf();
}

void mousePressed() {
  if (mm.current_screen .equals("MAIN MENU")) {

    if (mouseX > mm.button_options[0] && mouseX < mm.button_options[2] && mouseY > mm.button_options[1] && mouseY < mm.button_options[3]) {
      mm.current_screen = "OPTIONS_MENU";
    }

    if (mouseX > mm.button_exit[0] && mouseX < mm.button_exit[2] && mouseY > mm.button_exit[1] && mouseY < mm.button_exit[3]) {
      exit();
    }
  } else if (mm.current_screen .equals("OPTIONS_MENU")) {

    if (mouseX > mm.button_curis[0] && mouseX < mm.button_curis[2] && mouseY > mm.button_curis[1] && mouseY < mm.button_curis[3]) {
      mm.current_screen = "OPTIONS_CONF";
    }

    if (mouseX > mm.button_back_1[0] && mouseX < mm.button_back_1[2] && mouseY > mm.button_back_1[1] && mouseY < mm.button_back_1[3]) {
      mm.current_screen = "MAIN MENU";
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF")) {

    if (mouseX > mm.button_back_2[0] && mouseX < mm.button_back_2[2] && mouseY > mm.button_back_2[1] && mouseY < mm.button_back_2[3]) {
      mm.current_screen = "OPTIONS_MENU";      // Volta para o OPTIONS_MENU
    }
  }
}


void mouseMoved() {

  if (mm.current_screen .equals("OPTIONS_MENU")) {
  }

  if (mm.current_screen .equals("OPTIONS_CONF")) {
  }
}
