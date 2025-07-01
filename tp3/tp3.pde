/*Santino Xavier Contrera, TP3, comisión 3.
Video: https://www.youtube.com/watch?v=3gTpMSCq7M8
Teclas de teclas: 
Mantener espacio y mover el mouse para movimiento
Presionar R para reiniciar valores
Presionar W y S para variar distancia X de lineas*/
 
PImage patron;
color colorZona0, colorZona1, colorZona2, colorZona3;
boolean animar = false;
float desplazamiento = 0;
int separarLineas = 17;
float calcularVelocidad(float posMouseX) {
  return map(posMouseX, 0, width, 0, 5);
} //funcion que retorna valor
void setup(){
 size(800,400);
 colorZona0 = color(230);
 colorZona1 = color(230);  //asignar valor a variables
 colorZona2 = color(230);   //de color
 colorZona3 = color(230);
 patron = loadImage("zigzag.jpg");
}
void draw(){
 noStroke();
  fill(colorZona0); rect(400, 0, 400, 100);
  fill(colorZona1); rect(400, 100, 400, 100);
  fill(colorZona2); rect(400, 200, 400, 100);
  fill(colorZona3); rect(400, 300, 400, 100);
  
  stroke(1);
  for ( int x = 315; x <= 830; x += separarLineas ){
   for ( int y = 0-30; y < 400; y += 110 ) {
   dibujarZigzag (x + desplazamiento, y , 50 , 110);
  } //ciclo for anidado
 }

  if (animar) {
   float velocidad = calcularVelocidad(mouseX);
   desplazamiento += velocidad;
   desplazamiento%=50;
}

  image(patron,0,0,400,400);
}
void mousePressed() {
 if (mouseX > 400) {
 int zona = mouseY / 100;
 
if (zona == 0) colorZona0 = color(random(255), random(255), random(255));
 if (zona == 1) colorZona1 = color(random(255), random(255), random(255));
 if (zona == 2) colorZona2 = color(random(255), random(255), random(255));
 if (zona == 3) colorZona3 = color(random(255), random(255), random(255));
 
  println("Velocidad de animación:", dist(mouseX, mouseY, 0, height/2));
  }
 }
void keyPressed() {
 if (key == ' ') {animar = true;} 
 if (key == 'w') {separarLineas += 3;}
 if (key == 's') {separarLineas -= 3;}
 if (key == 'r') {
 colorZona0 = color(230);
 colorZona1 = color(230);
 colorZona2 = color(230);
 colorZona3 = color(230);
 desplazamiento = 0;
 separarLineas = 17;}
}
void keyReleased(){
  if (key == ' ') {animar = false;
}}
