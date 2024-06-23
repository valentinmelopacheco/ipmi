int cantX = 10;
int cantY = 10;
PImage obra;
void setup(){
 size(800,400);
 background(255);
 obra= loadImage("obra.jpeg");
}

void draw(){
  background(0,255,0);
  image(obra,0,0,400,400);
  float modX = 400/cantX;
  float modY = 400/cantY;
  for(int j=0; j<cantY; j++);
  for(int i=0; i<cantX; i++);
  ellipse(450,40,20,70);
}  
