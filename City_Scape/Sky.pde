class Sky {
  Star[]s;  
  int n;
  Sky() {    
    n = 50;
    s = new Star[n]; 
    for (int i = 0; i < s.length; i++) {
      s[i] = new Star();
    }
  }

  void desenha() {
    background(70, 100, 40);  
    for (int i = 0; i < s.length; i++) {      
      s[i].desenha();
    }
  }
}
