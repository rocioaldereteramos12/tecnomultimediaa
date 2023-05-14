PImage tortuga1;
PImage tortuga2;
PImage tortuga3;
PImage tortuga4;


float f1, r, g;
String estado;
int c;


int y, y2, y3;
void setup() {
  size (640, 480);
  
  
  y=500;
  y2=500;
  y3=500;
 
  r=255;
  
  f1=255;
  estado= "menu";
  
  tortuga1= loadImage("tortuga1.jpg");
  
  tortuga2= loadImage("tortuga2.jpg");
  
  tortuga3= loadImage("tortuga3.jpg");

  tortuga4= loadImage("tortuga4.jpg");
  

}
void draw() {
  f1-=3;


  if (estado.equals ("menu")) {
    pushStyle();



    image(tortuga1, 0, 0, 640, 480);
    fill(250);

    fill(0);
    circle(width/2, height/4*3, 50);
    fill(250);
    text("play", 308, height/4*3);

  popStyle();
  }
  //pantalla 1
  if (estado.equals ("p1")) {
    pushStyle();

    println();
    background(0);
    image(tortuga2, 0, 0, 640, 480);





    textSize(20);
    fill(250);

    text("Las tortugas marinas no poseen patas pero tienen cuatro aletas fuertes ", 20, y);
    

    if ( y >= 80 ) {
      y--;
    }
    c++;
    if (c >= 1800) {
      estado= "p2";
      y=500;
      c= 0;
      popStyle();
    }
  }

 //pantalla 2
  if (estado.equals ("p2")) {
    pushStyle();
    println();
    background(0, 0, 250);
    image(tortuga4, 0, 0, 640, 480);
    textSize(20);
    text(" esta especie come algas marinas, camarones y cangrejos", 20, y2);

    if ( y2 >= 80 ) {
      y2--;
    }
    c++;
  }
  if (c >= 1800) {
    estado= "p3";
    y2=500;
    c= 0;
    
     popStyle();
  }
  //pantalla 3
  if (estado.equals ("p3")) {
    pushStyle();
    image(tortuga3, 0, 0, 640, 480);
    textSize(20);
    fill(250);
    text("El tipo de reproducción de las tortugas marinas es sexual y ovíparo", 20, y3);
    if ( y3 >= 40 ) {

      y3--;
    }
    
        c++;
  }
  if (c >= 1800) {
    estado= "p4";
    y3=500;
    c= 0;
    popStyle();
  }


  //pantalla fin
  if (estado.equals("fin")) {

    image(tortuga1, 0, 0, 640, 480);
    fill(250);
    text("fin", 40, height/2);
    circle(width/2, height/4*3, 50);
  }
}



void mousePressed() {
  if (estado.equals("menu")) {
    if (dist(width/2, height/4*3, mouseX, mouseY)<50/2) {
      estado= "p1" ;
    }
  }
  if (estado.equals("fin")) {
    if (dist(width/2, height/4*3, mouseX, mouseY)<50/2) {
      estado= "menu" ;
    }
  }
}
