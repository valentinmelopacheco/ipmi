int estado;
PImage data;
PImage info;
PImage pista;
int contador;
float posX, posY;
PFont fuente;



void setup() {
  size(640, 480);
  data = loadImage("plantasnomadas2.jpg");
  estado = 1;
  info =loadImage("plantasnomadas.jpg");
  pista=loadImage("pista.jpg");

  estado = 1;
  contador = 0;
  posX= 10;
  posY= 320;

  fuente= loadFont("Calibri-Light-48.vlw");
  textFont(fuente);
}


void draw() {
  println("estado="+estado);
  background(0);
  fill(248);
  textSize(35);
  textAlign(CENTER, CENTER);
 contador++;
 if(contador>170) {
 estado++;
 contador = 0;
 }   
 else if ( estado == 1 ) {
    image(data, 0, 0, 640, 480);
    text("La Planta Nómada es una especie híbrida \n conformada \n por diversos organismos que coexisten \n en simbiosis para \n sobrevivir en entornos contaminados", width/2, height/2);

} else if ( estado == 2 ) {
    image(info, 0, 0, 640, 480);
    text("Estan constituidas por un sistema robotico \n  que constituyen una especie \n más fuerte entendida  como  un anticuerpo \n con el potencial  para restaurar  a pequeña \n escala los daños del entorno",width/2, height/2);
  } else if ( estado == 3 ) {
    image(pista, 0, 0, 640, 480);
    text("El proyecto es una metáfora \n         de la condición humana alienada \n                  y del impacto que genera su actividad \n en la naturaleza\n", width/3, height/3);
  } else if ( estado == 4 ) {
    background(0, 0, 225);
    contador = 0;

    if ( mouseX>200 && mouseX<200+150
      && mouseY >300 && mouseY<300+80 ) {
      fill(0, 255, 0);
    } else {
      fill(228);
    }

    rect( 200, 300, 150, 80);
  }

}
  
void mousePressed() {
  if ( estado==4) {

    if ( mouseX>200 && mouseX<200+150
      && mouseY >300 && mouseY<300+80 ) {
      estado = 1;
    }
  } else {
    estado++;
    contador = 0;
    posX = 20;
  }
}
