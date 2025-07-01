void dibujarZigzag(float x_, float y_, float ancho_, float alto_){
 push();
   translate(x_, y_);
   strokeWeight(6);
   //line(400,0,800,400);
   line(0, 0, ancho_, alto_ / 2);
   line(ancho_, alto_ / 2, 0, alto_);
 pop();
}
