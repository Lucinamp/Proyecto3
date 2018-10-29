interface Personaje{
 
  void display();
  int ataque ();
  int vida();
  String nombre();

}


class Dony implements Personaje{

  PImage dony;
  String nombre= "";
  
  Dony(){
    
    
    dony = loadImage("dony.png");
  }
  
 void  display(){
   image(dony,50,400);
  }
  int ataque(){
    ataque = (int) random(10,30);
    return ataque;
  }
  int vida (){
    vida = 150;
    return vida;
    
  }
  String nombre(){
    nombre= "Dony";
    return nombre;
  }
}

class Polly implements Personaje{
 
  PImage polly;
  String nombre= "";
  
  
  Polly(){
   
    polly = loadImage("polly.png");
  }
  
 void  display(){
   image(polly,50,400);
  }
   int ataque(){
      ataque = (int) random(30,60);
      return ataque;
     
  }
  int vida (){
     vida = 80;
     return vida;
  }
  String nombre(){
    nombre= "polly";
    return nombre;
  }
}

class Jellyn implements Personaje{
  
  PImage jellyn;
  String nombre= "";
  
  Jellyn(){
    
    jellyn = loadImage("jellyn.png");
  }
  
 void  display(){
   image(jellyn,50,400);
  }
   int ataque(){
      ataque = (int) random(15,30);
       return ataque;
  }
  int vida (){
    vida = 100;
    return vida;
  }
  String nombre(){
    nombre= "jellyn";
    return nombre;
  }
}

class Cookita implements Personaje{
  int vida;
  int ataque;
  PImage cookita;
  String nombre= "";
  Cookita(){
    vida = 100;
    ataque = (int) random(9,30);
    cookita = loadImage("cookita.png");
  }
  
 void  display(){
   image(cookita,50,400);
  }
   int ataque(){
      ataque = (int) random(10,20);
       return ataque;
  }
 int vida (){
    vida = 200;
    return vida;
  }
  String nombre(){
    nombre= "cookita";
    return nombre;
  }
}

class Jaker implements Personaje{
  int vida;
  int ataque;
  PImage jaker;
  String nombre= "";
  
  Jaker(){
    vida = 100;
    ataque = (int) random(9,30);
    jaker = loadImage("jaker.png");
  }
  
 void  display(){
   image(jaker,50,400);
  }
   int ataque(){
      ataque = (int) random(10,30);
       return ataque;
  }
  int vida (){
    vida=120;
    return vida;
  }
  String nombre(){
    nombre= "jaker";
    return nombre;
  }
}
