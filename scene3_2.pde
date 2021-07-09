class Scene32{

  Scene32(){}

void draw() {
  tembokMeja();
  awan();
  boy();
  
  kerupuk();
  //kaki();
  //badan();
  //lenganXY(140, 150);
  //kepala();
  //tangan();
    
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

void tesBezierVertex() {
  beginShape();
  vertex(30, 20);
  bezierVertex(80, 0, 80, 75, 30, 75);
  bezierVertex(50, 80, 60, 25, 30, 20);
  endShape();
}


void lengan() {
  beginShape();
  fill(41, 148, 255);
    vertex(125,282);
    bezierVertex(119,181,185,178,188,278);
    bezierVertex(178,266,135,267,125,282);
  endShape(CLOSE);
}

void lenganXY(int x, int y) {  
  
  beginShape();
  fill(41, 148, 255);
    vertex(125+x,282+y);
    bezierVertex(119+x,181+y,185+x,178+y,188+x,278+y);
    bezierVertex(178+x,266+y,135+x,267+y,125+x,282+y);
  endShape(CLOSE);
}
void kepala() {
  fill(199, 156, 103);
  //ellipseMode(CENTER);
  ellipse(302, 300,
          120, 120);
}

void tembokMeja() {
   stroke(0);
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
   fill(255);
   noStroke();
   rect(700,342,209,85);
   fill(0);
   textSize(48);
   text("Kantin", 730,359+43);
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

void boy() {
  stroke(0);
  //lengan
  fill(0,61,140);
  quad(275.5,357,292,380.5,234,425,214.5,404);
  //baju
  fill(41,148,255);
  quad(276,356.5,344.5,356.5,363,524,256,524);
  //lengan
  fill(0,61,140);
  quad(316,372.5,336,368.5,359.5,446.5,323,451.5);
  //kepala
  fill(196,156,103);
  ellipse(250+(120/2),247+(120/2),120,120);
  //mata
  fill(255);
  ellipse(267+(17/2),272+(17/2),17,17);
  ellipse(296+(20/2),287+(20/2),20,20);
  //mulut
  fill(138,22,22);
  ellipse(253+(30/2),304+(29/2),30,29);
  //mulut
  fill(196,156,103);
  noStroke();
  triangle(252.5,308,292.55,293,302,339);
  //chitos
  stroke(0);
  fill(243,215,64);
  rect(185,428,41,47);
  fill(0);
  textSize(12);
  text("Chitos",188,440+14);
  //tangan
  fill(196,156,103);
  quad(218.5,407,231.5,420.5,211.5,431.5,204,423.5);
  ellipse(197+15/2,423+15/2,15,15);
  quad(331,449.5,350.5,447,352.5,475.5,338.5,478.5);
  ellipse(338+15/2,471+15/2,15,15);
  //celana
  fill(148,12,0);
  quad(324,523.5,355,523.5,355,592.5,315.5,602);
  quad(274,522.5,357,522.5,304,602,239.5,579.5);
  //kaki
  fill(196,156,103);
  quad(256.5,585,282.5,593.5,256.5,632.5,234.5,621);
  quad(325,599.5,344.5,595,344.5,610.5,327,625);
  quad(344.5,610.5,366,615.5,362.5,622.5,327,625);
  fill(0);
  ellipse(213+(44/2),619+(27/2),44,24);
  ellipse(359+(17/2),611+(28/2),17,28);
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
  
}
}
