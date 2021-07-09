class Scene2Translasi{
  
  Scene2Translasi(){}
  
  
  void draw(int x,int y) {//x dan y adalah pergeserannya
  beginShape();  
  stroke(0);
  tembokMeja();
  awan();
  kaki(x, y);
  badan(x, y);
  kepala(x, y);
  tangan(x, y);
  kerupuk();
  endShape(CLOSE);
}

  void orangLain(int x, int y){
  kaki(x, y);
  badan(x, y);
  kepala(x, y);
  tangan(x, y);
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

void tangan(int x, int y) {
  pushMatrix();
     beginShape();
     fill(199, 156, 103);
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

void badan(int x, int y) {  
  fill(41, 148, 255);
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


void lengan() {
  beginShape();
  fill(41, 148, 255);
    vertex(125,282);
    bezierVertex(119,181,185,178,188,278);
    bezierVertex(178,266,135,267,125,282);
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

void tembokMeja() {
   beginShape();
   fill(219, 208, 110); //tembok
   quad(600, 650,
       565, 650,
       565, 0,
       600, 0);
   quad(600, 300,
        700, 225,
       700, 0,
       600, 0);   
       
       
   fill(138, 96, 44); //meja
  quad(600, 300,
       1000, 300,
       1100, 225,
       700, 225);
  quad(600, 300,
       1000, 300,
       1000, 650,
       600, 650);   
  quad(1000, 300,
       1100, 225,
       1100, (225+350),
       1000, (300+350));
   endShape(CLOSE);
}

void awan() {
  //noStroke();
  fill(95,158,160);
  ellipse(100,140,30,15);
  ellipse(130,140,45,35);
  ellipse(145,140,30,15);

  fill(95,158,160);
  ellipse(230,110,30,10);
  ellipse(250,110,40,30);
  ellipse(280,110,20,10);
}

void kerupuk() {
  fill(51,115,28);
  rect(675,186,16,94);
  rect(675,263,128,17);
  rect(729,202,16,78);
  rect(787,186,16,94);
  quad(690.5,185.5,787,185.5,744.5,202.5,729,202.5);
  quad(729,165.5,745,165.5,803,186,675,186);
  ellipse(727+19/2,151+19/2,19,19);
  fill(196,196,196,127);
  quad(691,186,729,202.5,729,263,691,263);
  quad(744.5,202.5,787.5,185,787.5,264,744.5,263);
   fill(255);
   noStroke();
   rect(700,342,209,85);
   fill(0);
   textSize(48);
   text("Kantin", 730,359+43);
   stroke(0);
}

}
