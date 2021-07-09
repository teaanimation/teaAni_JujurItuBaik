class ZOrg{
  
  ZOrg(){}
  
  void drawCredit(int opacity){
  fill(0,0,0, opacity);
  rect(0,0,1280,720);
  }
  
  void draw1(int x,int y) {//x dan y adalah pergeserannya
  stroke(0);
  kaki(x, y);
  badan(x, y, 255, 255, 0);
  kepala(x, y);
  tangan(x, y, 255, 123, 0);
  
}
  void draw2(int x,int y) {//x dan y adalah pergeserannya
  stroke(0);
  kaki(x, y);
  badan(x, y, 158, 103, 36);
  kepala(x, y);
  tangan(x, y, 204, 188, 171);
  
}  void draw3(int x,int y) {//x dan y adalah pergeserannya
  stroke(0);
  kaki(x, y);
  badan(x, y, 13, 219, 255);
  kepala(x, y);
  tangan(x, y, 219, 140, 255);
  
}  void draw4(int x,int y) {//x dan y adalah pergeserannya
  stroke(0);
  kaki(x, y);
  badan(x, y, 255, 0, 0);
  kepala(x, y);
  tangan(x, y, 0, 158, 13);
  
}

void kaki(int x, int y) {
  fill(148, 12, 0);
  beginShape();  // Kaki
  quad(280+x, 540+y,
       330+x, 540+y,
       330+x, 700+y,
       280+x, 700+y);
  endShape(CLOSE);  
}

void tangan(int x, int y, int r, int g, int b) {
  pushMatrix();
     beginShape();
     fill(r, g, b);
     ellipse(300+x, 503+y,
              20, 20);
     fill(0, 61, 140);
     quad(290+x, 390+y,
          310+x, 390+y,
          310+x, 500+y,
          290+x, 500+y);
     endShape(CLOSE);
  popMatrix();
  

}

void badan(int x, int y, int r, int g, int b) {  
  fill(r, g, b);
  beginShape();
  // Dada
  quad(280+x, 370+y,
       330+x, 370+y,
       340+x, 400+y,
       270+x, 400+y);
  // Perut
  quad(340+x, 400+y,
       270+x, 400+y,
       280+x, 550+y,
       330+x, 550+y);
  endShape(CLOSE);
  
  
}

void kepala(int x, int y) {
  fill(199, 156, 103);
  //ellipseMode(CENTER);
  ellipse(302+x, 315+y,
          120, 120);
     //mata
  fill(255);
  ellipse(338+x,285+y,17,17);
  ellipse(306+x,300+y,20,20);
  //mulut
  fill(138,22,22);
  ellipse(313+(30/2)+x,306+5+(29/2)+y,30,29);
  //segitigaMulut
  fill(196,156,103);
  noStroke();
  triangle( 320+x,295+y+5,
            350+x,315+y+5,
            302+x,335+y+5);
}






}
