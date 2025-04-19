
PImage miFoto;

void setup() {
 miFoto=loadImage("autoretrato.jpg"); 
 size(800,400); // tamaño de la ventana
 image(miFoto,0,0,400,400);
 }
 
void draw() {
 background(111,118,124); // pared
 image(miFoto,0,0,400,400);

 fill(35, 27, 27);
 ellipse(530,110,20,60);
 quad(528,135,527,89,576,103,554,154); //pelo izquierdo
 ellipse(659,111,40,65); //pelo derecho
 ellipse(600,82,150,80); //base pelo
 
 noStroke();
 fill(50,57,67);
 ellipse(585,259,150,70); //cuello buzo
 quad(400,343,418,327,692,398,400,400); //buzo base
 quad(415,329,478,293,685,311,666,392); //buzo base2
 quad(477,294,479,282,527,266,515,348); //capucha
 quad(496,278,505,259,550,242,615,381); //capucha2
 quad(550,271,658,263,679,312,493,325); //buzo relleno
 quad(400,400,500,336,682,342,690,400); //buzo relleno2
 
 stroke(10);
 strokeWeight(3);     
 arc(606, 325, 40, 20, 0, PI); //sombrita en el buzo
 noStroke();
 
 fill(0);
 ellipse(585,259,120,70); //cuello sombra
 quad(490,308,509,314,513,322,490,309); //sombra capucha1
 quad(509,315,543,324,546,328,512,322); //sombra capucha2
 quad(542,323,580,324,579,333,542,326); //sombra capucha3
 quad(586,325,631,293,653,321,587,328); //sombra capucha4
 quad(630,292,652,249,690,333,647,317); //sombra buzo
 quad(610,322,676,312,677,352,613,322); //sombra buzo2
 
 stroke(150);
 strokeWeight(6);
 line(555,318,561,400); //cordon 1
 line(611,322,597,400); //cordon 2
 stroke(0);
 strokeWeight(1);
 
 quad(448,310,443,400,477,400,491,307); //tira mochila base
 quad(448,310,477,294,490,307,456,359); //tira mochila up
 stroke(150);
 strokeWeight(3);
 line(470,298,458,400); //tira blanca de la mochila
 strokeWeight(1);
 
 
 stroke(0);
 fill(86,66,68);
 quad(529,288,637,288,584,319,554,309); //remera
 noStroke();
 fill(48,37,37);
 triangle(593,299,618,298,603,308);
 stroke(0);
 
 fill(100);
 quad(668,231,745,231,745,400,676,400); //telefono
 noStroke();
 fill(70);
 rect(726,237,16,35);
 stroke(150);
 fill(0);
 ellipse(733,247,10,10);
 ellipse(733,261,10,10);
 noStroke();
 fill(50);
 ellipse(707,282,13,13);
 
 
 fill(240, 198, 174);
 triangle(750,338,800,400,699,400); //forma mano
 quad(660,365,720,400,685,400,658,380); //dedo meñique
 quad(652,343,736,374,725,392,650,359); //dedo anular
 quad(653,319,747,349,734,367,648,337); //dedo medio
 quad(757,346,736,316,727,329,744,356); //dedo indice1
 quad(736,319,700,309,690,317,729,330); //dedo indice2

 stroke(216,167,150);
  
 quad(531,274,551,276,556,294,528,287);
 quad(540,202,643,230,635,293,530,283); // cuello
 noStroke();
 ellipse(583,288,110,21);

 fill(216,167,150);
 ellipse(609,284,57,29); //sombra cuello
 quad(562,247,603,279,581,285,565,255);
 quad(607,271,638,267,637,294,609,297);
 
 stroke(0);
 strokeWeight(5);
 line(613,308,653,277); //correción sombra cuello
 strokeWeight(1);

 fill(240, 198, 174);
 stroke(216,167,150);
 ellipse(531,164,30,60); // forma oreja
 fill(198, 147, 126);
 ellipse(538,160,18,15); //oreja interna
 fill(240, 198, 174);
 ellipse(543,164,20,22); //oreja interna 2
 ellipse(608,178,139,200); // base de cara
 
 fill(255);
 stroke(210,174,150);
 ellipse(588,165,29,16);
 ellipse(643,168,25,13);
 fill(73,41,38);
 ellipse(588,165,15,15);
 ellipse(643,168,12,12);
 
 noStroke();
 fill(35, 27, 27);
 ellipse(609,88,40,40); //mechon pelo central
 ellipse(643,100,37,35); //mechon derecho abajo
 ellipse(574,90,39,35); //mechon izquierdo
 ellipse(626,80,30,20); //relleno
 quad(568,148,598,147,603,152,569,152); //ceja izq
 quad(635,150,661,152,664,158,637,154); //ceja der
 
 fill(180,120,117);
 triangle(596,240,607,238,612,244);
 triangle(612,244,621,240,626,245); //boca
 triangle(603,240,610,246,620,243);
 quad(596,240,626,245,619,245,602,243);
 
 fill(236,181,167);
 triangle(619,173,629,208,609,209); //la napia
 
 stroke(236,181,167);
 strokeWeight(3);
 point(579,200);
 point(588,205);
 point(587,194);
 point(574,212);
 point(567,190);
 point(592,241);
 point(592,133);
 point(579,135);
 point(645,203);
 point(643,195);
 strokeWeight(1);
 
 stroke(0);
 fill(0);
 textSize(30);
 text(mouseX + " - " + mouseY, mouseX, mouseY);
 println(mouseX + " - " + mouseY);

 }
