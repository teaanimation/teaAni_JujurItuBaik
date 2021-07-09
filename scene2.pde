class Scene2{
  
  Scene2(){}
  
  
  void draw() {
  //beginShape();  
  stroke(0);
  tembokMeja();
  awan();
  kaki();
  badan();
  kepala();
  tangan();

  //endShape(CLOSE);
}

void kaki() {
  fill(148, 12, 0);
  beginShape();  // Kaki
  quad(280, 540,
      330, 540,
      330, 700,
      280, 700);
  endShape(CLOSE);  
}

void tangan() {
  pushMatrix();
     beginShape();
     fill(199, 156, 103);
     ellipse(300, 503,
              20, 20);
     fill(0, 61, 140);
     quad(290, 390,
          310, 390,
          310, 500,
          290, 500);
     endShape(CLOSE);
  popMatrix();
  

}

void badan() {  
  fill(41, 148, 255);
  beginShape();
  // Dada
  quad(280, 370,
       330, 370,
       340, 400,
      270, 400);
  // Perut
  quad(340, 400,
      270, 400,
      280, 550,
      330, 550);
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


void kepala() {
  fill(199, 156, 103);
  //ellipseMode(CENTER);
  ellipse(302, 315,
          120, 120);
            //mata
  fill(255);
  ellipse(338,285,17,17);
  ellipse(306,300,20,20);
  //mulut
  fill(138,22,22);
  ellipse(313+(30/2),306+5+(29/2),30,29);
  //segitigaMulut
  fill(196,156,103);
  noStroke();
  triangle( 320,295+5,
            350,315+5,
            302,335+5);
  stroke(0);
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
}
