//Kelompok: TEA Animation
//Anggota Kelompok:
//Adam A Maheswara            19523014
//Elsa Kurniawati             19523113
//Thalia Maharani Nur Handoko 19523022
//
//Matkul:Grafika dan Multimedia
//Kelas: C
//Dosen: Ibu SEPTIA RANI, S.T., M.CS.

//Scene 1: Fade in        0:00--0:10
//Scene 2: Ke Kantin      0:10--0:20
//Scene 3.1: Rame         0:20--0:30
//Scene 3.2: Curi         0:30--0:40
//Scene 4: Ketahuan       0:40--0:50
//Scene 5: Dinda          0:50--1:22 (82s)
//Scene 6: Bayar          1:22--1:43 (103s)

import processing.sound.*;
SoundFile teaAudio;

int t = 1;             //--> frame. ganti ini jika ingin skip frame
int fadeOpacity = 255; //--> opacity untuk fade in (akan di increment berkurang)
int fRate = 15;        //--> frame rate
int fadeSecond = 5;    //--> detik ke berapa fade in?
int fFade = fRate*fadeSecond; 
int op = 0;
PFont inter50;
//PFont calibriDefault;

Scene2Translasi myscene2;
ZOrg orangLain;
Scene32 myscene32;
Scene4  myscene4;
Scene5  myscene5;
Scene6  myscene6;


void setup() {
  size(1280, 720);
  background(255);
  frameRate(fRate);
  
  
    
  //Memasukkan/load file suara ke sketch processing
  teaAudio = new SoundFile(this, "audio-disatukan-wav16bit.wav", false);
  
  //play audio tersebut
  teaAudio.play();
  
  //init
  myscene2 = new Scene2Translasi();
  orangLain = new ZOrg();
  myscene32= new Scene32();
  myscene4 = new Scene4();
  myscene5 = new Scene5();
  myscene6 = new Scene6();
}

int dx2 = 0; //displacemet sbX scene2

void draw(){
  inter50 = createFont("Inter-SemiBold.ttf", 50, true);
  //textSize(10); text(textShown1, 0,10);
   if(t > fFade){     
     if((fadeOpacity!=0)&&fadeOpacity>0){fadeOpacity=fadeOpacity-16; }
   }
   background(255);
   
   //myscene5.draw();
   if( (t/fRate)>0 && (t/fRate)<10){    //Scene2
     myscene2.draw(0,0);
   }if( (t/fRate)>=10 && (t/fRate)<20){  //Scene2-gerak
     myscene2.draw(dx2,0); dx2++;
   }if( (t/fRate)>=20 && (t/fRate)<25){ //Scene3.1-rame
     myscene2.draw(dx2,0); 
     orangLain.draw3(dx2+150, +10);
     //myscene2.orangLain(dx2+150, +10);
     orangLain.draw1(dx2+300, -5);
   }if( (t/fRate)>=25 && (t/fRate)<30){ //Scene3.1
     myscene2.draw(dx2,0); 
     orangLain.draw1(dx2+180, -10);
   }if( (t/fRate)>=30 && (t/fRate)<40){ //Scene3.2
     myscene32.draw();
   }if( (t/fRate)>=40 && (t/fRate)<50){
     myscene4.draw();
   }if( (t/fRate)>=50 && (t/fRate)<80){
     myscene5.draw(); 
   }if( (t/fRate)>=80 && (t/fRate)<103){ //sampai 103s
     scene6();
   }
   if( (t/fRate)>=103 && (t/fRate)<166){ //sampai 103s
     orangLain.drawCredit(op); 
     if(op < 250){op = op +16;}
   //}if( (t/fRate)>=106 && (t/fRate)<166){ //sampai 103s
     fill(255,255,255,op); textSize(50);
     text("Mengakui, berkata, dan memberitahu sesuai", 150, 300);
     text("dengan kenyataan dan kebenaran", 150, 360);
     textSize(25);
     text("''Hendaklah kalian senantiasa berlaku jujur, karena sesungguhnya", 150, 440);
     text("kejujuran akan mengantarkan kepada kebaikan, dan sesungguhnya", 150, 490);
     text("kebaikan mengantarkan kepada surga.'' (HR. Muslim)", 150, 540);
   }
   
   fill(0,0,0,fadeOpacity);
   beginShape(); 
   rect(0,0,1280,720);
   endShape(CLOSE);   
   fill(255,255,255,fadeOpacity);
   
   if((t/fRate)>=103 && (t/fRate)<166){ 
     
     credits();
   }  
   
   inter50 = createFont("Inter-SemiBold.ttf", 50, true);
   textFont(inter50); textSize(64);
   text("''Jujur itu lebih baik''", 200, 300);
   textSize(30); text("oleh TEA Animation.", 200, 350);
   
   
   
   if( (t/fRate)>= 166) {exit();}
   //Line dibawah tidak diubah (untuk keperluan tes)
   String textShown1 = "frame="+t; 
   String textShown2 = "opacity="+fadeOpacity;
   String textShown3 = "time="+(t/fRate)+"s";
   String textShown4 = "opacity2="+op;
   fill(0); rect(0,0,100,60);
   textSize(15); fill(255); 
   //calibriDefault = createFont("Calibri", 10, true); 
   //textFont(calibriDefault); //teks size 10, putih, dgn outline   
   //stroke(1); strokeWeight(1);
   text(textShown2, 0,30);
   text(textShown1, 0,15);
   text(textShown3, 0,45); 
   text(textShown4, 0,60); 
   
   if( (t/fRate)>=50 && (t/fRate)<80){//render kepala berputar (rotasi)
      myscene5.boyHead();
   } 
   
t++;}

void scene6(){
   myscene6.draw();
}

void credits(){
  myscene6.creditRoll();
}

//void credits(){
//  System.out.println("credits() dipanggil");
  
//  int opacity = 0;
  
//  if(opacity <= 255){
//    opacity = opacity + 16;
//  }
  
//  fill(0,0,0,fadeOpacity);
//  beginShape(); 
//  rect(0,0,1280,720);
//  endShape(CLOSE);
  
//  textFont(inter50); textSize(64);
//  text("''Jujur itu lebih baik''", 200, 300);
//  textSize(30); text("oleh TEA Animation.", 200, 350);
//}
