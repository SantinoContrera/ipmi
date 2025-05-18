//Santino Xavier Contrera, comisión 3
int Pantalla = 0;
float textoY = -65;
float textoY2 = -65;
PImage img1, img2, img3;
PFont miFuente;

void setup(){
  size(640,480);
  img1 = loadImage("img1.jpg");
  img2 = loadImage("img2.jpg");
  img3 = loadImage("img3.jpg");
  miFuente = createFont("BarberChop.otf",48);
  textFont(miFuente);
}
void draw(){
  if(Pantalla==0){
    image(img1,0,0,width,height);    
    textoY += 1;
    stroke(0);
    strokeWeight(15);
    fill(255,0,0);
    textSize(30);
    textAlign(CENTER,CENTER);
    fill(0); //"contorno" negro
    text("Rain Room de Hannes Koch \ny Florian Ortkrass, \nde Random International 2012",315,textoY);
    fill(255,0,0);
    text("Rain Room de Hannes Koch \ny Florian Ortkrass, \nde Random International 2012",320,textoY);
    }
    
    if(textoY>545){
     Pantalla=1;
     textoY=height+65; }
   
  else if(Pantalla==1){
    image(img2,0,0,width,height);
    fill(0); //contorno
    text("Rain Room es una instalacion de arte \nelectronico donde llueve constantemente. \nGracias a un sistema de camaras 3D, la lluvia \nse detiene alrededor de cada visitante, \npermitiendoles caminar sin mojarse.",315,textoY);
    fill(255,0,0);
    text("Rain Room es una instalacion de arte \nelectronico donde llueve constantemente. \nGracias a un sistema de camaras 3D, la lluvia \nse detiene alrededor de cada visitante, \npermitiendoles caminar sin mojarse.",320,textoY);
    textoY -= 1;
    }
    
    if(textoY<-75){
      Pantalla=2;
      textoY=0-60;}
      
   else if(Pantalla==2){ 
      image(img3,0,0,width,height);
      textoY2+=1;
      
      fill(0); // ""
      text("Rain Room se encuentra ahora de forma \npermanente en Sharjah. La instalacion se ha \nexpuesto en los museos mas famosos del mundo,\n como el MoMA de Nueva York y el Barbican \nde Londres.",315,textoY2);
      fill(255,0,0);
      text("Rain Room se encuentra ahora de forma \npermanente en Sharjah. La instalacion se ha \nexpuesto en los museos mas famosos del mundo,\n como el MoMA de Nueva York y el Barbican \nde Londres.",width/2,textoY2);
}
    if(textoY2>height/2){
      textoY2=height/2; }
      
     noStroke();
     fill(165,0,0);
    if(textoY2==height/2) {
     if (mouseX>245 && mouseX<395 &&
         mouseY>365 && mouseY<415)
     {fill(210,0,0);}
       else {fill(160,0,0);}
       
     rect(320-75,390-25,150,50);
     fill(230);
     text("Reiniciar",320,390);}
}
  void mousePressed(){
  if (Pantalla==2 && textoY2==height/2)
   
   {if(mouseX>245 && mouseX<395 &&
         mouseY>365 && mouseY<415){
      
     Pantalla=0;
     textoY = -65;
     textoY2 = -65;
  }
 }
}
