class City {
  Building[]b; 
  //float nPredios;
  int num;
  City(int n) {    
    num = n;    
    b = new Building[num]; 

    float x = 0;
    for (int i = 0; i < num; i++) {
      float y = random(100, height*0.75);
      b[i] = new Building(x, y, width/num, height-y);
      x += width/num;
    }
  }

  void desenha() {      
    for (int i = 0; i < b.length; i++) {      
      b[i].desenha();
    }
  }
}
