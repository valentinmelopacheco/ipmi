//Valentin Melo Pacheco
//Comision:3,Profesor:David Bedoian
PImage autoretrato;
void setup() {
  size(800, 400);
  autoretrato = loadImage("autoretrato3.jpg");
}
void draw() {
  background(144, 238, 144);
  image(autoretrato, 0, 0, 400, 400);
  println(mouseX);
  println("X:");
  println(mouseY);
  println("Y:");
  fill(255, 207, 167);
  rect(520, 226, 100, 50);
  ellipse(570, 125, 150, 200);
  fill(135, 206, 250);
  triangle(575, 278, 450, 420, 780, 535);
  triangle(551, 130, 573, 112, 590, 130);
  fill(135, 206, 250);
  ellipse(598, 90, 20, 20);
  ellipse(548, 90, 20, 20);
  line(540, 180, 604, 165);
  line(545, 183, 605, 170);
}
