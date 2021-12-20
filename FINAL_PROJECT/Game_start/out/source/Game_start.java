/* autogenerated by Processing revision 1276 on 2021-12-20 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class Game_start extends PApplet {

Main_Menu mm;

final int COLOR_WHITE = color(255);
final int COLOR_BACKGROUND = color(0);

 public void settings() {
  fullScreen();
  //size(1800, 800);
}

 public void setup() {
  background(COLOR_BACKGROUND);
  mm = new Main_Menu();

  mm.current_screen = "MAIN MENU";
  
}

 public void draw() {
  mm.desenha();
}

 public void buttons_info() {
  mm.buttons_info();
}

 public void display_main_menu() {
  mm.display_main_menu();
}

 public void display_game_start() {
  mm.display_game_start();
}
 public void display_options_menu() {
  mm.display_options_menu();
}

 public void display_options_conf() {
  mm.display_options_conf_curis();
  mm.display_options_conf_rakis();
  mm.display_options_conf_gafis();
}

 public void mousePressed() {      // referencia https://www.youtube.com/watch?v=HzI5H3n3PRQ&t=4228s
  if (mm.current_screen .equals("MAIN MENU")) {       //Se o ecrã que estiver se chamar "MAIN MENU" faz...

    if (mouseX > mm.start_game.x && mouseX < mm.start_game.t && mouseY > mm.start_game.y && mouseY < mm.start_game.ta) {
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

    if (mouseX > mm.options.x && mouseX < mm.options.t && mouseY > mm.options.y && mouseY < mm.options.ta) {
      mm.current_screen = "OPTIONS_MENU";     //Se clicar no botão OPTIONS vou para o ecrã OPTIONS_MENU
    }

    if (mouseX > mm.exit.x && mouseX < mm.exit.t && mouseY > mm.exit.y && mouseY < mm.exit.ta) {
      exit();     //Se clicar no botão EXIT saio do programa
    }
  } else if (mm.current_screen .equals("GAME_START")) {   //Se o ecrã que estiver se chamar "GAME_START" faz...

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "MAIN MENU";     //Se clicar no botão VOLTAR volto para o ecrã MAIN_MENU
      return;
    }
  } else if (mm.current_screen .equals("OPTIONS_MENU")) {  //Se o ecrã que estiver se chamar "OPTIONS_MENU" faz...

    if (mouseX > mm.curis.x && mouseX < mm.curis.t && mouseY > mm.curis.y && mouseY < mm.curis.ta) {
      mm.current_screen = "OPTIONS_CONF_CURIS";    //Se clicar no botão CURIS vou para o ecrã OPTIONS_CONF_CURIS
    }

    if (mouseX > mm.rakis.x && mouseX < mm.rakis.t && mouseY > mm.rakis.y && mouseY < mm.rakis.ta) {
      mm.current_screen = "OPTIONS_CONF_RAKIS";      //Se clicar no botão RAKIS vou para o ecrã OPTIONS_CONF_RAKIS
    }

    if (mouseX > mm.gafis.x && mouseX < mm.gafis.t && mouseY > mm.gafis.y && mouseY < mm.gafis.ta) {
      mm.current_screen = "OPTIONS_CONF_GAFIS";      //Se clicar no botão GAFIS vou para o ecrã OPTIONS_CONF_GAFIS
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "MAIN MENU";        //Se clicar no botão VOLTAR volto para o ecrã MAIN_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_CURIS")) {  //Se o ecrã que estiver se chamar "OPTIONS_CONF_CURIS" faz...

    if (mouseX > mm.less.x && mouseX < mm.less.t && mouseY > mm.less.y && mouseY < mm.less.ta) {
      mm.numeroCr = mm.numeroCr - 1;
    }

    if (mouseX > mm.more.x && mouseX < mm.more.t && mouseY > mm.more.y && mouseY < mm.more.ta) {
      mm.numeroCr = mm.numeroCr + 1;
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "OPTIONS_MENU";      // Volta para o OPTIONS_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_RAKIS")) {  //Se o ecrã que estiver se chamar "OPTIONS_CONF_RAKIS" faz...

    if (mouseX > mm.less.x && mouseX < mm.less.t && mouseY > mm.less.y && mouseY < mm.less.ta) {
      mm.numeroRk = mm.numeroRk - 1;
    }

    if (mouseX > mm.more.x && mouseX < mm.more.t && mouseY > mm.more.y && mouseY < mm.more.ta) {
      mm.numeroRk = mm.numeroRk + 1;
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "OPTIONS_MENU";    // Volta para o OPTIONS_MENU
    }
  } else if (mm.current_screen .equals("OPTIONS_CONF_GAFIS")) {  //Se o ecrã que estiver se chamar "OPTIONS_CONF_GAFIS" faz...

    if (mouseX > mm.less.x && mouseX < mm.less.t && mouseY > mm.less.y && mouseY < mm.less.ta) {
      mm.numeroGf = mm.numeroGf - 1;
    }

    if (mouseX > mm.more.x && mouseX < mm.more.t && mouseY > mm.more.y && mouseY < mm.more.ta) {
      mm.numeroGf = mm.numeroGf + 1;
    }

    if (mouseX > mm.back.x && mouseX < mm.back.t && mouseY > mm.back.y && mouseY < mm.back.ta) {
      mm.current_screen = "OPTIONS_MENU";    // Volta para o OPTIONS_MENU
    }
  }
}
class Button {

  final int COLOR_WHITE = color(255);
  final int COLOR_BACKGROUND = color(0);
  final int COLOR_BUTTONS = color(50, 50, 255);
    //button_game_start[0] = 400;      //x1
    //button_game_start[1] = 550;      //y1
    //button_game_start[2] = 630;      //t1
    //button_game_start[3] = 600;      //t2
    float x, y, t, ta;
    String my_text1;

  Button(String my_text, int x1, int y1, int t1, int t2) {
  
    x = x1;
    y = y1;
    t = t1;
    ta = t2;
    my_text1 = my_text;
   
  }
  
   public void desenha_button() {

    int button_corner = 15;
    textSize(32);
    stroke(COLOR_WHITE);
    strokeWeight(3);
    fill(COLOR_BUTTONS);

    rect(x, y, t - x, ta - y, button_corner);

    fill(0);  // black shadow
    text(my_text1, 19 + x, 10 + y + ( (ta - y) / 2 ));

    fill(COLOR_WHITE);
    text(my_text1, 21 + x, 12 + y + ( (ta - y) / 2 ));
  }
}
class Curis {

  ArrayList<SeresColection> crs;

  Curis(int n) {
    crs = new ArrayList<SeresColection>();

    
  }
   public void desenha_curis() {
    for (int i = crs.size()-1; i >= 0; i--) {

      SeresColection sr = crs.get(i);
      sr.move();
      sr.display();
      if (sr.finished() && sr.tamanho()) {
        crs.remove(i);
        crs.add(new SeresColection(random(width), random(height)));
      }
    }
  }
}
class SeresColection {

  float x;
  float y;
  float speed;
  float t = 20;
  float life = 255;
  

  SeresColection(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 10;
  }

   public void move() {
    
    if (x < t/2) {
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
    
    y += random(-speed, speed);

    x += random(-speed, speed);
  }

   public boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
  
   public boolean tamanho() {
    t--;
    if (t < 0) {
      return true;
    } else {
      return false;
    }
  }


   public void display() {
    stroke(255, life);
    fill(0, 255, life);
    ellipse(x, y, t, t);
  }
}
class Gafis {

  ArrayList<GafisQuant> gfs;

  Gafis(int n) {
    gfs = new ArrayList<GafisQuant>();

    
  }
   public void desenha_gafis() {
    for (int i = gfs.size()-1; i >= 0; i--) {

      GafisQuant sr = gfs.get(i);
      sr.move();
      sr.display();
      if (sr.finished() && sr.tamanho()) {
        gfs.remove(i);
        gfs.add(new GafisQuant(random(width), random(height)));
      }
    }
  }
}
class GafisQuant {

  float x;
  float y;
  float speed;
  float t = 50;
  float life = 255;

  GafisQuant(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 10;
  }

   public void move() {
    
    if (x < t/2) {
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
    
    y += random(-speed, speed);

    x += random(-speed, speed);
  }

   public boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
  
   public boolean tamanho() {
    t--;
    if (t < 0) {
      return true;
    } else {
      return false;
    }
  }


   public void display() {
    stroke(255, life);
    fill(life, 0, 255);
    ellipse(x, y, t, t);
  }
}
class Main_Menu {

    Button start_game, options, exit, back, curis, rakis, gafis, quantidade, more, less;
    Curis cr;
    Rakis rk;
    Gafis gf; 
    Relva el;
  
  String current_screen;
  int[] button_game_start, button_exit, button_options, button_back_1, button_back_2, button_back_3, button_back_4, button_back_5;
  int[] button_curis, button_rakis, button_gafis;
  int[] button_quantidade, button_more, button_less, button_more1, button_less1, button_more2, button_less2, numero;


  int numeroCr = 2;
  int numeroRk = 2;
  int numeroGf = 2;
  
  Main_Menu() {
    
     
    /*cr = new Curis(numeroCr);
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
    numero = new int[4];*/

    current_screen = "MAIN MENU";     // Identificar que este ecrã se chama ou se autotitula-se de MAIN MENU

    buttons_info();
  }

   public void desenha() {
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

   public void buttons_info() {            // referencia https://www.youtube.com/watch?v=HzI5H3n3PRQ&t=4228s

  }

  /*void desenha_button(String my_text, int x1, int y1, int t1, int t2) {

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
  }*/

   public void display_main_menu() {      //Main menu com as 3 opçoes
    start_game = new Button("START GAME",400, 550, 630 ,600);
    options = new Button("OPTIONS", 850, 550, 1030, 600);
    exit = new Button("EXIT", 1250, 550, 1380, 600);
    start_game.desenha_button();
    options.desenha_button();
    exit.desenha_button();
  }

   public void display_game_start() {  //Dentro do START GAME
  
    back = new Button("VOLTAR", 50, 40, 200, 90);
    back.desenha_button();
    cr.desenha_curis();
    rk.desenha_rakis();
    gf.desenha_gafis();
    el.desenha_relva();

  }
  
   public void display_options_menu() {  //Dentro do OPTION que contem 4 botoes, um de voltar e 3 dos seres
  
    back = new Button("VOLTAR", 50, 40, 200, 90);
    curis = new Button("CURIS", 850, 350, 1000, 400);
    gafis = new Button("GAFIS", 850, 550, 1000, 600);
    rakis = new Button("RAKIS", 850, 750, 1000, 800);
    back.desenha_button();
    curis.desenha_button();
    gafis.desenha_button();
    rakis.desenha_button();
  }

   public void display_options_conf_curis() {    //Dentro do CURIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero 10 
  
    back = new Button("VOLTAR", 50, 40, 200, 90);
    quantidade = new Button("QUANTIDADE", 850, 400, 1070, 450);
    more = new Button("+", 750, 550, 810, 580);
    less = new Button("-", 1125, 550, 1180, 580);
    back.desenha_button();
    quantidade.desenha_button();
    more.desenha_button();
    less.desenha_button();
  }

   public void display_options_conf_rakis() {    //Dentro do RAKIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero 5
  
    back = new Button("VOLTAR", 50, 40, 200, 90);
    quantidade = new Button("QUANTIDADE", 850, 400, 1070, 450);
    more = new Button("+", 750, 550, 810, 580);
    less = new Button("-", 1125, 550, 1180, 580);
    back.desenha_button();
    quantidade.desenha_button();
    more.desenha_button();
    less.desenha_button();

  }

   public void display_options_conf_gafis() {      //Dentro do GAFIS e contem 5 botoes, um de voltar um de QUANTIDADE um de + um de - e um do numero 20 
  
    back = new Button("VOLTAR", 50, 40, 200, 90);
    quantidade = new Button("QUANTIDADE", 850, 400, 1070, 450);
    more = new Button("+", 750, 550, 810, 580);
    less = new Button("-", 1125, 550, 1180, 580);
    back.desenha_button();
    quantidade.desenha_button();
    more.desenha_button();
    less.desenha_button();
    
  }
}
class Rakis {

  ArrayList<RakisQuant> rks;

  Rakis(int n) {
    rks = new ArrayList<RakisQuant>();

    
  }
   public void desenha_rakis() {
    for (int i = rks.size()-1; i >= 0; i--) {

      RakisQuant sr = rks.get(i);
      sr.move();
      sr.display();
      if (sr.finished() && sr.tamanho()) {
        rks.remove(i);
        rks.add(new RakisQuant(random(width), random(height)));
      }
    }
  }
}
class RakisQuant {

  float x;
  float y;
  float speed;
  float t = 70;
  float life = 255;

  RakisQuant(float x1, float y1) {
    x = x1;
    y = y1;
    speed = 20;
  }

   public void move() {
    
    if (x < t/2) {
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
    
    y += random(-speed, speed);

    x += random(-speed, speed);
  }

   public boolean finished() {
    life--;
    if (life < 0) {
      return true;
    } else {
      return false;
    }
  }
  
   public boolean tamanho() {
    t--;
    if (t <= 0) {
      return true;
    } else {
      return false;
    }
  }


   public void display() {
    stroke(255, life);
    fill(255, life, 0);
    ellipse(x, y, t, t);
  }
}
class Relva {

  ArrayList<RelvaQuant> rl;

  Relva() {
    rl = new ArrayList<RelvaQuant>();
  
  for(int k = 0; k < 5; k++) {
      rl.add(new RelvaQuant(random(width), random(height), 20));    
  }
    }
     public void desenha_relva() {
      for (int i = rl.size()-1; i >= 0; i--) {

        RelvaQuant rq = rl.get(i);
        rq.display();
        
      }
    }
  }
class RelvaQuant {

  float x;
  float y;
  float t;

  RelvaQuant(float x1, float y1, float t1) {
    x = x1;
    y = y1;
    t = t1;
  }

   public void display() {
    stroke(100, 255, 100);
    fill(100, 255, 100);
    rect(x, y, t, t);
  }
}


  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Game_start" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
