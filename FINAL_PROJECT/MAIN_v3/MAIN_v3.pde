Main_Menu mm;//Main_menu class

final color COLOR_BACKGROUND = color(0);//cor definitiva para o background

void settings() {
  fullScreen(); //Mete o ecrã em fullscreen
  //size(1800, 800); //Para ser mais facil o debug
}

void setup() {
  background(COLOR_BACKGROUND); //Mete o background com a cor COLOR_BACKGROUND
  mm = new Main_Menu(); // Construtor da classe Main_Menu

  mm.current_screen = "MAIN MENU"; // O ecrã atual é o "Main Menu"
}

void draw() {
  mm.inicializa(); // Inicializa o Main Menu
}

void display_main_menu() {
  mm.display_main_menu(); // Desenha o ecrã Main Menu
}

void display_game_start() {
  mm.display_game_start(); // Desenha o ecrã Game Start
}
void display_options_menu() {
  mm.display_options_menu(); // Desenha o ecrã Options
}

void display_options_conf() { // Dentro do ecrã Options desenha as configurações para os 3 seres
  mm.display_options_conf_curis();
  mm.display_options_conf_rakis();
  mm.display_options_conf_gafis();
}

void mousePressed() {      // referencia https://www.youtube.com/watch?v=HzI5H3n3PRQ&t=4228s
  if (mm.current_screen .equals("MAIN MENU")) {       //Se o ecrã se chamar "MAIN MENU" faz...

    if (mouseX > mm.start_game.x && mouseX < mm.start_game.t && mouseY > mm.start_game.y && mouseY < mm.start_game.ta) {
      mm.current_screen = "GAME_START";      //Se clicar no botão GAME START vou para o ecrã GAME_START
      
       // Se a quantidade de seres na lista for maior que a quantidade de seres no numeroCr, numero de seres na lista = numeroCr      
      for (int k = 0; k < mm.numeroCr; k++) {       
       if(mm.cr.crs.size() != mm.numeroCr){
         mm.cr.crs.add(new Curis(random(width), random(height)));
       }
      }
      
      // Se a quantidade de seres na lista for maior que a quantidade de seres no numeroRk, numero de seres na lista = numeroRk 
       for (int k = 0; k < mm.numeroRk; k++) {       
       if(mm.rk.rks.size() != mm.numeroRk){
         mm.rk.rks.add(new Rakis(random(width), random(height)));
       }
      }
      
      // Se a quantidade de seres na lista for maior que a quantidade de seres no numeroGf, numero de seres na lista = numeroGf 
       for (int k = 0; k < mm.numeroGf; k++) {      
       if(mm.gf.gfs.size() != mm.numeroGf){
          mm.gf.gfs.add(new Gafis(random(width), random(height)));
       }
      }
    }

    if (mouseX > mm.options.x && mouseX < mm.options.t && mouseY > mm.options.y && mouseY < mm.options.ta) {
      mm.current_screen = "OPTIONS_MENU";     //Se clicar no botão OPTIONS vou para o ecrã OPTIONS_MENU
    }

    if (mouseX > mm.exit.x && mouseX < mm.exit.t && mouseY > mm.exit.y && mouseY < mm.exit.ta) {
      exit();     //Se clicar no botão EXIT saio do programa
    }
  } else if (mm.current_screen .equals("GAME_START")) {   //Se o ecrã se chamar "GAME_START" faz...

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "MAIN MENU";     //Se clicar no botão VOLTAR volto para o ecrã MAIN_MENU

      for (int k = mm.cr.crs.size()-1; k >= 0; k--) {   //Retira os seres que puseste lá dentro para que eles voltem a aparecer   
         mm.cr.crs.remove(k);         
      }
      
        for (int k = mm.rk.rks.size()-1; k >= 0; k--) {      
         mm.rk.rks.remove(k);          
      }
      
        for (int k = mm.gf.gfs.size()-1; k >= 0; k--) {      
         mm.gf.gfs.remove(k);          
      }
      return;
    }

  } else if (mm.current_screen .equals("OPTIONS_MENU")) {  //Se o ecrã se chamar "OPTIONS_MENU" faz...

    if (mouseX > mm.curis1.x && mouseX < mm.curis1.t && mouseY > mm.curis1.y && mouseY < mm.curis1.ta) {
      mm.current_screen = "OPTIONS_CONF_CURIS";    //Se clicar no botão CURIS vou para o ecrã OPTIONS_CONF_CURIS
    }

    if (mouseX > mm.rakis1.x && mouseX < mm.rakis1.t && mouseY > mm.rakis1.y && mouseY < mm.rakis1.ta) {
      mm.current_screen = "OPTIONS_CONF_RAKIS";      //Se clicar no botão RAKIS vou para o ecrã OPTIONS_CONF_RAKIS
    }

    if (mouseX > mm.gafis1.x && mouseX < mm.gafis1.t && mouseY > mm.gafis1.y && mouseY < mm.gafis1.ta) {
      mm.current_screen = "OPTIONS_CONF_GAFIS";      //Se clicar no botão GAFIS vou para o ecrã OPTIONS_CONF_GAFIS
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "MAIN MENU";        //Se clicar no botão VOLTAR volto para o ecrã MAIN_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_CURIS")) {  //Se o ecrã se chamar "OPTIONS_CONF_CURIS" faz...

    if (mouseX > mm.less.x && mouseX < mm.less.t && mouseY > mm.less.y && mouseY < mm.less.ta) { // Se clicar no botão -, retira seres
      if(mm.numeroCr > 1)  mm.numeroCr = mm.numeroCr - 1;
      else if(mm.numeroCr == 1) mm.numeroCr =1;
             
    }

    if (mouseX > mm.more.x && mouseX < mm.more.t && mouseY > mm.more.y && mouseY < mm.more.ta) { // Se clicar no botão +, adiciona seres
      mm.numeroCr = mm.numeroCr + 1;
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "OPTIONS_MENU";      // Volta para o OPTIONS_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_RAKIS")) {  //Se o ecrã se chamar "OPTIONS_CONF_RAKIS" faz...

    if (mouseX > mm.less.x && mouseX < mm.less.t && mouseY > mm.less.y && mouseY < mm.less.ta) {// Se clicar no botão -, retira seres
      if(mm.numeroRk > 1)  mm.numeroRk = mm.numeroRk - 1;
      else if(mm.numeroRk == 1) mm.numeroRk =1;
    }

    if (mouseX > mm.more.x && mouseX < mm.more.t && mouseY > mm.more.y && mouseY < mm.more.ta) {// Se clicar no botão +, adiciona seres
      mm.numeroRk = mm.numeroRk + 1;
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "OPTIONS_MENU";    // Volta para o OPTIONS_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_GAFIS")) {  //Se o ecrã se chamar "OPTIONS_CONF_GAFIS" faz...

    if (mouseX > mm.less.x && mouseX < mm.less.t && mouseY > mm.less.y && mouseY < mm.less.ta) {// Se clicar no botão -, retira seres
      if(mm.numeroGf > 1)  mm.numeroGf = mm.numeroGf - 1;
      else if(mm.numeroGf == 1) mm.numeroGf =1;
    }

    if (mouseX > mm.more.x && mouseX < mm.more.t && mouseY > mm.more.y && mouseY < mm.more.ta) {// Se clicar no botão +, adiciona seres
      mm.numeroGf = mm.numeroGf + 1;
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "OPTIONS_MENU";    // Volta para o OPTIONS_MENU
    }
  }
}
