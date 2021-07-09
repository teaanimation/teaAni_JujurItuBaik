class Scene6{

  Scene6(){}
  
  int opacity = 0; //akan diincrement naik
  
void draw() {
  rectMode(CORNER);
  tembokMeja();
  awan();
  boy();
  girl();
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
  //baju
  fill(41,148,255);
  quad(276,356.5,344.5,356.5,363,524,256,524);
  //lengan
  fill(0,61,140);
  quad(300,480,295,390,340,390,350,480);
 
  //kepala
  fill(196,156,103);
  ellipse(250+(120/2),247+(120/2),120,120);
  //mata
  fill(255);
  ellipse(330+(17/2),272+(17/2),17,17);
  ellipse(296+(20/2),287+(20/2),20,20);
  //mulut
  fill(138,22,22);
  ellipse(330+(30/2),304+(29/2),30,29);
  noStroke();
  fill(196,156,103);
  ellipse(315+(30/2),296+(29/2),30,29);
  //mulut
  fill(196,156,103);
  //kaki
  fill(196,156,103);
  quad(300.5,585,334,593.5,320.5,632.5,300.5,621);
  //celana
  fill(148,12,0);
  quad(270,523.5,355,523.5,360,592.5,270.5,602);
  //sepatu
  fill(0);
  ellipse(290+(44/2),619+(27/2),44,24);
}

void girl() {
  stroke(0);
  //badan
  fill(143,155,163);
  quad(492,608,595.5,600,608,721.5,481.5,721.5);
  //kerudung
  fill(103,160,68);
  quad(490,563,572,563,599,601.5,470,618.5);
  ellipse(472+(120/2),475+(120/2),120,120);
  
}


void uang(){ 
  fill(-3375053);
  noStroke();
  pushMatrix();
  translate(479.24472, 255.73286);
  rotate(0.0);
  beginShape();
  vertex(0.0, 0.0);
  vertex(64.44211, -32.221054);
  vertex(73.15048, -5.2250366);
  vertex(20.900146, 29.608536);
  endShape(CLOSE);
  popMatrix();

  fill(-3375053);
  noStroke();
  pushMatrix();
  translate(560.2328, 233.96187);
  rotate(0.0);
  ellipse(0,0,38.67151, 46.1134);
  popMatrix();

  fill(-10053274);
  noStroke();
  pushMatrix();
  translate(578.5204, 189.54907);
  rotate(0.016326666);
  rectMode(CORNERS);
  rect(-49.262074, -13.091588, 32.22107, 31.65115);
  popMatrix();

  fill(-3394765);
  noStroke();
  pushMatrix();
  translate(393.03162, 161.6822);
  rotate(0.0);
  arc(0,0,66.20675, 64.44211, -0.055498544, 2.9996958, PIE);
  popMatrix();

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

void creditRoll(){
   
   fill(0,0,0,fadeOpacity);
   beginShape(); 
   rect(0,0,1280,720);
   endShape(CLOSE);   
   fill(255,255,255,fadeOpacity);

if(this.opacity < 240){
this.opacity = this.opacity + 16;}
}

}
