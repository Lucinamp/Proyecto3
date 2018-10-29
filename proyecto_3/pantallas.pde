  
interface Pantallas{
 
  void display();

}

class P1 implements Pantallas{
  PImage p1;
  PFont font;

  
  P1(){
 
    p1= loadImage("fondo1.jpg");
    font = loadFont("Bubble3D-100.vlw");
  }
  
 void  display(){
   image(p1,0,0);
   textFont(font);
fill(85,165,163);
text("Golden Candy", 10, 150);


textFont(font);
textSize(40);
fill(120);
text("presiona 'Enter' para iniciar", 70, 560);
  }
}

class P2 implements Pantallas{
  PImage p2;
  PFont font;
  PFont font1;
  String nombre ;
  String nombre2;
 
  
  P2(){
   
    p2= loadImage("fondo2.jpg");
    font = loadFont("Bubble3D-100.vlw");
    font1 = loadFont("Bubble3D-20.vlw");
  }
  
 void  display(){
   image(p2,0,0);
   image(dony,50,200);
   image(polly,200,200);
   image(jellyn,350,200);
   image(cookita,550,200);
   image(jaker,650,200);
  
  textFont(font1);
fill(101,119,153);
text("selecciona tu personaje", 250, 550);

textFont(font1);
fill(223,25,89);
text("presionando la letra indicada", 50, 525);

textFont(font1);
fill(178,122,185);
text("selecciona con el mouse", 500, 525);

textFont(font);
textSize(30);
fill(255);
text("c", 130, 380);
text("v", 257, 380);
text("b", 430, 380);
text("n", 580, 380);
text("m", 700, 380);

textFont(font);
textSize(30);
fill(255);
text("Jugador 1:", 100, 500);
text("Jugador 2:", 460, 500);

    if (player1 !=0) {
      textSize(30);
      fill(0);
      text(player_1.nombre(), 300, 500);
    }
    if (player2 !=0) {
      textSize(30);
      fill(0);
      text(player_2.nombre(), 650, 500);
    }
  }




 }

 

class P3 implements Pantallas{
  PImage p3;
  PFont font;

 
  
  P3(){
   
    p3= loadImage("fondo3.png");
    font = loadFont("Bubble3D-100.vlw");
  }
  
  void display(){
    image(p3,-100,-100);
    fill(255,255,255,70);
    rect(0,0,800,600);
    
    textFont(font);
textSize(50);
fill(255);
text("Quien Ganara el dulce?", 75, 50);

textFont(font);
textSize(50);
fill(223,25,89);
text(v1, 250, 250);

textFont(font);
textSize(35);
fill(223,25,89);
text("jugador1:", 35, 245);
fill(223,25,89);
noStroke();
rect(55,280,v1,30);

textFont(font);
textSize(50);
fill(178,122,185);
text(v2, 650, 250);

textFont(font);
textSize(35);
fill(178,122,185);
text("jugador2:", 450, 245);
noStroke();
fill(178,122,185);
rect(470,280,v2,30);

textFont(font);
textSize(25);
fill(223,25,89);
text("'A' para atacar", 40, 585);

textFont(font);
textSize(25);
fill(178,122,185);
text("'D' para atacar", 550, 585);


player_1.display();

translate(500,0);
player_2.display();



  
}
}

class P4 implements Pantallas{
  PImage p4;
  PFont font;

  
  P4(){
 
    p4= loadImage("fondo4.png");
    font = loadFont("Bubble3D-100.vlw");
  }
  
 void  display(){
   image(p4,-500,-100);
   textFont(font);
fill(156,34,106);
text("Felicidades", -400, 200);




textFont(font);
textSize(40);
fill(255);
text("presiona 'x' para iniciar", -400, 560);

if(v1<=0){
  textFont (font);
fill(156,34,106);
text("jugador dos",-450,300);

translate(-200,-50);
player_2.display();

}
if(v2<=0){
  textFont (font);
fill(156,34,106);
text("jugador uno",-450,300);

translate(-200,-50);
player_1.display();


}
  }
}
