import processing.sound.*;
Pantallas p1;
Pantallas p2;
Pantallas p3;
Pantallas p4;
Personaje player_1;
Personaje player_2;
PFont font;
int p;
String pe1= "";
String pe2= "";
int vida;
int ataque;
PImage dony;
PImage polly;
PImage jellyn;
PImage cookita;
PImage jaker;
int player1;
int player2;
int turno;
int v1,v2;
int at1,at2;
SoundFile file;

void setup() {
  size (800, 600);
  background(255);
  file = new SoundFile(this,"cancion .mp3");
  file.loop();
   file.play();
  font = loadFont("Bubble3D-25.vlw");
  dony = loadImage("dony.png");
  polly = loadImage("polly.png");
  jellyn = loadImage("jellyn.png");
  cookita = loadImage("cookita.png");
  jaker = loadImage("jaker.png");
  p =0;
  player1 = 0;
  player2 = 0;
  p2 = new P2();
  p1 = new P1();
  p3 = new P3();
  p4 = new P4();
}

void draw() {
  p1.display();
  if (p==0) {
    p1.display();
    if (keyCode==ENTER) {
      p=1;
    }
  }
 
 
  if (p==1) {
    p2.display();
  }
  if ((player1>0) && (player2 >0)) {
    p=2;
  }


  if (p==2) {
    p3.display();
     if(v1<=0 || v2<=0){
  p=3;
}
  }
  if(p==3){
    p4.display();
    
  }
}

void keyPressed() {

  if (p==1) {
    if (key=='c') {
      player1=1;
      player_1 = new Dony();
      v1= player_1.vida();
at1= player_1.ataque();
      pe1 = "dony";
    }
    if (key=='v') {
      player1=2;
      player_1 = new Polly();
       v1= player_1.vida();
at1= player_1.ataque();
      pe1 = "polly";
    }
    if (key=='b') {
      player1=3;
      player_1 = new Jellyn();
       v1= player_1.vida();
at1= player_1.ataque();
      pe1="jellyn";
    }
    if (key=='n') {
      player1=4;
      player_1 = new Cookita();
       v1= player_1.vida();
at1= player_1.ataque();
      pe1="cookita";
    }
    if (key=='m') {
      player1=5;
      player_1 = new Jaker();
 v1= player_1.vida();
 at1= player_1.ataque();
      pe1="jaker";
    }
  }
    if((p==2) && (turno==(int)random(0,1))){
    if(key=='a'|| key=='A'){
      v2 =v2-at1;
      turno=1;
  }}
  if((p==2) && (turno==1)){
  if(key=='d' || key=='D'){
    v1= v1-at2;
    turno=0;
  }
}
if(p==3){
    if(key=='x'){
   p=0;
   player1=0;
    player2=0;
    }
  }
}


void mouseClicked() {
  if (p==1) {
    if ((mouseX >80)&& (mouseX<190) && (mouseY>200) && (mouseY<350)) {
      player2=1;
      player_2 = new Dony();
      v2= player_2.vida();
      at2= player_2.ataque();
    }
    if ((mouseX >220)&& (mouseX<315) && (mouseY>200) && (mouseY<350)) {
      player2=2;
      player_2 = new Polly();
   v2= player_2.vida();
   at2= player_2.ataque();
    }
    if ((mouseX >360)&& (mouseX<500) && (mouseY>200) && (mouseY<350)) {
      player2=3;
      player_2 = new Jellyn();
   v2= player_2.vida();
   at2= player_2.ataque();
    }
    if ((mouseX >550)&& (mouseX<650) && (mouseY>200) && (mouseY<350)) {
      player2=4;
      player_2 = new Cookita();
      v2= player_2.vida();
      at2= player_2.ataque();

    }
    if ((mouseX >650)&& (mouseX<800) && (mouseY>200) && (mouseY<350)) {
      player2=5;
      player_2 = new Jaker();
    v2= player_2.vida();
    at2= player_2.ataque();
    }

  }
}
