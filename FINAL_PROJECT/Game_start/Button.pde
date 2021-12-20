class Button {

  final color COLOR_WHITE = color(255);
  final color COLOR_BACKGROUND = color(0);
  final color COLOR_BUTTONS = color(50, 50, 255);
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
  
  void desenha_button() {

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
